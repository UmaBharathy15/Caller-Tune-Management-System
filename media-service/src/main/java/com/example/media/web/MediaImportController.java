package com.example.media.web;

import com.example.media.domain.MediaFile;
import com.example.media.service.MediaService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.file.*;
import java.util.*;

@RestController
@RequestMapping("/media/import")
public class MediaImportController {

    private final MediaService mediaService;

    public MediaImportController(MediaService mediaService) {
        this.mediaService = mediaService;
    }

    @PostMapping
    public ResponseEntity<List<UUID>> importSongs(
            @RequestParam(defaultValue = "C:/CALLERTUNE/Songs") String folder,
            @RequestParam(defaultValue = "English") String language   // ✅ param
    ) throws Exception {

        List<UUID> ids = new ArrayList<>();
        Path base = Path.of(folder);

        try (var stream = Files.walk(base)) {
            stream.filter(p -> p.toString().toLowerCase().endsWith(".mp3"))
                  .forEach(file -> {
                      try {
                          UUID id = UUID.randomUUID();
                          long sizeBytes = Files.size(file);
                          Integer durationSec = extractDuration(file.toString());

                          MediaFile mf = mediaService.saveMeta(
                                  id,
                                  file.getFileName().toString(),
                                  "audio/mpeg",
                                  sizeBytes,
                                  durationSec,
                                  file.toString(),
                                  language   // ✅ pass language
                          );

                          ids.add(mf.getId());
                      } catch (Exception e) {
                          e.printStackTrace();
                      }
                  });
        }

        return ResponseEntity.ok(ids);
    }

    private Integer extractDuration(String filePath) {
        try {
            Process p = new ProcessBuilder(
                    "C:/ffmpeg/bin/ffprobe",
                    "-v", "error",
                    "-show_entries", "format=duration",
                    "-of", "default=noprint_wrappers=1:nokey=1",
                    filePath
            ).start();

            try (BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()))) {
                String line = br.readLine();
                if (line != null) {
                    double seconds = Double.parseDouble(line.trim());
                    return (int) Math.round(seconds);
                }
            }
        } catch (Exception e) {
            System.err.println("Failed to extract duration for: " + filePath);
        }
        return null;
    }
}