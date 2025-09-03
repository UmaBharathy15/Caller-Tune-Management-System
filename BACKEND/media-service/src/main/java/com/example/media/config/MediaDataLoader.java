package com.example.media.config;

import com.example.media.domain.MediaFile;
import com.example.media.repository.MediaRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.nio.file.*;
import java.util.UUID;

@Component
public class MediaDataLoader implements CommandLineRunner {

    private final MediaRepository repo;

    public MediaDataLoader(MediaRepository repo) {
        this.repo = repo;
    }

    @Override
    public void run(String... args) throws Exception {
        // Base folder where your songs are stored
        Path base = Path.of("C:/CALLERTUNE/Songs");

        // Scan all subfolders and find MP3 files
        Files.walk(base, 2)
            .filter(path -> path.toString().toLowerCase().endsWith(".mp3"))
            .forEach(path -> {
                try {
                    // Avoid duplicates if already inserted
                    if (repo.findAll().stream().anyMatch(m -> m.getStoragePath().equals(path.toString()))) {
                        return;
                    }

                    MediaFile mf = new MediaFile();
                    mf.setId(UUID.randomUUID());
                    mf.setFilename(path.getFileName().toString());
                    mf.setMimeType("audio/mpeg");
                    mf.setStoragePath(path.toString());
                    mf.setSizeBytes(Files.size(path));

                    repo.save(mf);
                    System.out.println("Inserted: " + path);
                } catch (Exception e) {
                    System.err.println("Error saving " + path + ": " + e.getMessage());
                }
            });
    }
}