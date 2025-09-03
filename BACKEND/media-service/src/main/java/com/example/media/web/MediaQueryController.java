package com.example.media.web;

import com.example.media.domain.MediaFile;
import com.example.media.repository.MediaRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/media")
public class MediaQueryController {

    private final MediaRepository repo;

    public MediaQueryController(MediaRepository repo) {
        this.repo = repo;
    }

    @GetMapping
    public List<MediaFile> listAll() {
        // returns all songs with their messy names
        return repo.findAll();
    }

    @GetMapping("/{id}")
    public MediaFile getOne(@PathVariable UUID id) {
        return repo.findById(id).orElseThrow();
    }
}