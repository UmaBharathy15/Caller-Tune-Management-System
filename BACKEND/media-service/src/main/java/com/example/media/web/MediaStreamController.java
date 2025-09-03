package com.example.media.web;

import com.example.media.domain.MediaFile;
import com.example.media.service.MediaService;
import org.springframework.web.bind.annotation.*;
import org.springframework.core.io.*;
import org.springframework.core.io.support.ResourceRegion;
import org.springframework.http.*;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.nio.file.Path;
import java.util.UUID;

@RestController
@RequestMapping("/media")
public class MediaStreamController {
    private final MediaService mediaService;

    public MediaStreamController(MediaService mediaService) {
        this.mediaService = mediaService;
    }

    /** Stream full file with range requests (for <audio> tag) */
    @GetMapping("/{id}/stream")
    public ResponseEntity<ResourceRegion> stream(@PathVariable UUID id,
                                                 @RequestHeader HttpHeaders headers) throws IOException {
        MediaFile mf = mediaService.find(id);
        UrlResource res = new UrlResource(Path.of(mf.getStoragePath()).toUri());
        long length = res.contentLength();
        long chunk = 1024 * 1024;
        HttpRange range = headers.getRange().isEmpty() ? null : headers.getRange().get(0);

        ResourceRegion region = (range == null)
                ? new ResourceRegion(res, 0, Math.min(chunk, length))
                : new ResourceRegion(res, range.getRangeStart(length),
                        Math.min(chunk, range.getRangeEnd(length)));

        return ResponseEntity.status(range == null ? HttpStatus.OK : HttpStatus.PARTIAL_CONTENT)
                .contentType(MediaType.parseMediaType(mf.getMimeType()))
                .body(region);
    }

    /** ✅ Crop & stream clip using ffmpeg */
    /** ✅ Crop & stream clip using ffmpeg */
    /** ✅ Crop & stream clip using ffmpeg */
    @GetMapping(value = "/{id}/clip/stream", produces = "audio/mpeg")
    public void clipStream(@PathVariable UUID id,
                           @RequestParam int startSec,
                           @RequestParam int durationSec,
                           HttpServletResponse resp) throws IOException {
        MediaFile mf = mediaService.find(id);
        resp.setStatus(200);
        resp.setHeader("Content-Type", "audio/mpeg");

        String ffmpegPath = "C:\\ffmpeg\\bin\\ffmpeg.exe";

        ProcessBuilder pb = new ProcessBuilder(
                ffmpegPath,
                "-ss", String.valueOf(startSec),
                "-t", String.valueOf(durationSec),
                "-i", mf.getStoragePath(),
                "-f", "mp3", "-"
        );
        pb.redirectErrorStream(false); // ✅ separate stdout & stderr

        Process p = pb.start();

        // ✅ Log errors from ffmpeg (stderr only)
        new Thread(() -> {
            try (BufferedReader br = new BufferedReader(new InputStreamReader(p.getErrorStream()))) {
                br.lines().forEach(line -> System.err.println("FFMPEG >> " + line));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }).start();

        // ✅ Stream audio output (stdout) to HTTP response
        try (InputStream in = p.getInputStream(); OutputStream out = resp.getOutputStream()) {
            in.transferTo(out);
        }
    }
}
