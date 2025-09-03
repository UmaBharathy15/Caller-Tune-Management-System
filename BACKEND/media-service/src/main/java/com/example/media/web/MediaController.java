package com.example.media.web;

import com.example.media.domain.MediaFile;
import com.example.media.service.MediaService;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.*;
import java.util.*;

@RestController
@RequestMapping("/media")
public class MediaController {
    private final MediaService mediaService;
    private final String storagePath = "C:/CALLERTUNE/media";

    public MediaController(MediaService mediaService) {
        this.mediaService = mediaService;
    }

    public static class MediaResponse {
        private UUID mediaId;
        private String streamUrl;

        public MediaResponse(UUID mediaId, String streamUrl) {
            this.mediaId = mediaId;
            this.streamUrl = streamUrl;
        }
        public UUID getMediaId() { return mediaId; }
        public String getStreamUrl() { return streamUrl; }
    }

    @PostMapping(consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public MediaResponse upload(
            @RequestPart("file") MultipartFile file,
            @RequestParam(defaultValue = "English") String language   // ✅ param
    ) throws IOException {
        UUID id = UUID.randomUUID();
        Path dir = Path.of(storagePath);
        Files.createDirectories(dir);
        Path dst = dir.resolve(id + ".mp3");
        Files.copy(file.getInputStream(), dst, StandardCopyOption.REPLACE_EXISTING);

        MediaFile mf = mediaService.saveMeta(
                id,
                file.getOriginalFilename(),
                file.getContentType() != null ? file.getContentType() : "audio/mpeg",
                Files.size(dst),
                null,
                dst.toString(),
                language
        );

        return new MediaResponse(mf.getId(), "/media/" + mf.getId() + "/stream");
    }
    @GetMapping("/{id}/clip/info")
    public ResponseEntity<?> getClipInfo(
            @PathVariable UUID id,
            @RequestParam int startSec,
            @RequestParam int durationSec) {
        MediaFile mf = mediaService.find(id);

        // validate duration
        if (mf.getDurationSec() == null || startSec + durationSec > mf.getDurationSec()) {
            return ResponseEntity.badRequest().body(Map.of("error", "Invalid clip range"));
        }

        // Just returns metadata about the clip
        return ResponseEntity.ok(Map.of(
                "mediaId", id,
                "clipStart", startSec,
                "clipDuration", durationSec,
                "path", mf.getStoragePath()
        ));
    }
}