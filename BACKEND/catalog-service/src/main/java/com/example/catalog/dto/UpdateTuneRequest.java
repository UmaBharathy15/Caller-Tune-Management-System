package com.example.catalog.dto;

import jakarta.validation.constraints.*;

public class UpdateTuneRequest {
    @NotBlank @Size(max = 200)
    private String title;

    @Size(max = 60)
    private String language;

    @Positive @Max(3600)
    private Integer durationSec;

    @Size(max = 500)
    private String previewUrl;

    @Size(max = 500)
    private String audioUrl;

    private Boolean active;

    /** ✅ NEW: link to media-service file */
    @NotBlank
    private String mediaId;

    public UpdateTuneRequest() {}

    // getters / setters
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getLanguage() { return language; }
    public void setLanguage(String language) { this.language = language; }

    public Integer getDurationSec() { return durationSec; }
    public void setDurationSec(Integer durationSec) { this.durationSec = durationSec; }

    public String getPreviewUrl() { return previewUrl; }
    public void setPreviewUrl(String previewUrl) { this.previewUrl = previewUrl; }

    public String getAudioUrl() { return audioUrl; }
    public void setAudioUrl(String audioUrl) { this.audioUrl = audioUrl; }

    public Boolean getActive() { return active; }
    public void setActive(Boolean active) { this.active = active; }

    public String getMediaId() { return mediaId; }
    public void setMediaId(String mediaId) { this.mediaId = mediaId; }
}