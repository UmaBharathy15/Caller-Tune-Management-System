package com.example.media.service;

import com.example.media.domain.MediaFile;
import com.example.media.repository.MediaRepository;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.*;

@Service
public class MediaService {
    private final MediaRepository repo;
    private final RestTemplate restTemplate;

    @Value("${catalog.service.url:http://localhost:8082/tunes}")
    private String catalogUrl;

    public MediaService(MediaRepository repo, RestTemplate restTemplate) {
        this.repo = repo;
        this.restTemplate = restTemplate;
    }

    public MediaFile saveMeta(UUID id, String filename, String mimeType,
                              long sizeBytes, Integer durationSec,
                              String storagePath, String language) {
        MediaFile mf = new MediaFile();
        mf.setId(id);
        mf.setFilename(filename);
        mf.setMimeType(mimeType);
        mf.setSizeBytes(sizeBytes);
        mf.setDurationSec(durationSec);
        mf.setStoragePath(storagePath);
        mf.setLanguage(language != null ? language : "Unknown"); // ✅ default if not provided

        MediaFile saved = repo.save(mf);

        // 🔗 Sync with catalog-service
        Map<String, Object> payload = new HashMap<>();
        payload.put("code", UUID.randomUUID().toString().substring(0, 8));
        payload.put("title", saved.getFilename());
        payload.put("language", saved.getLanguage());
        payload.put("durationSec", saved.getDurationSec());
        payload.put("mediaId", saved.getId().toString());

        try {
            restTemplate.postForEntity(catalogUrl, payload, Void.class);
        } catch (Exception e) {
            System.err.println("⚠️ Failed to sync with catalog-service: " + e.getMessage());
        }

        return saved;
    }

    public MediaFile find(UUID id) {
        return repo.findById(id).orElseThrow(() -> new RuntimeException("Media not found"));
    }

    public List<MediaFile> findAll() {
        return repo.findAll();
    }
}
