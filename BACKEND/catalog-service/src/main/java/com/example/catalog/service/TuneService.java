package com.example.catalog.service;

import com.example.catalog.domain.Tune;
import com.example.catalog.dto.CreateTuneRequest;
import com.example.catalog.dto.UpdateTuneRequest;
import com.example.catalog.repository.TuneRepository;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class TuneService {
    private final TuneRepository repo;

    public TuneService(TuneRepository repo) {
        this.repo = repo;
    }

    public List<Tune> findByLanguage(String lang) {
        return repo.findByLanguageIgnoreCase(lang);
    }

    public List<Tune> findTop30ByLanguage(String lang) {
        return repo.findTop30ByLanguageIgnoreCase(lang);
    }

    public Tune get(UUID id) {
        return repo.findById(id)
                .orElseThrow(() -> new RuntimeException("Tune not found: " + id));
    }

    public Tune create(CreateTuneRequest req) {
        Tune t = new Tune();
        t.setTitle(req.getTitle());
        t.setLanguage(req.getLanguage());
        t.setDurationSec(req.getDurationSec());
        t.setMediaId(req.getMediaId());
        return repo.save(t);
    }

    public Tune update(UUID id, UpdateTuneRequest req) {
        Tune t = get(id);
        t.setTitle(req.getTitle());
        t.setLanguage(req.getLanguage());
        t.setDurationSec(req.getDurationSec());
        t.setMediaId(req.getMediaId());
        return repo.save(t);
    }

    public void delete(UUID id) {
        repo.deleteById(id);
    }

    public List<Tune> findAllByIds(List<UUID> ids) {
        return repo.findAllById(ids);
    }
}
