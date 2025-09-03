package com.usertunes.dto;

import com.usertunes.domain.TuneStatus;

import java.time.OffsetDateTime;
import java.util.UUID;

public class UserTuneResponse {
    private UUID id;
    private String userId;   // 📱 phone number
    private UUID songId;     // song reference
    private Integer clipStartMs;
    private Integer clipEndMs;
    private TuneStatus status;
    private OffsetDateTime effectiveFrom;
    private OffsetDateTime effectiveTo;
    private OffsetDateTime createdAt;
    private OffsetDateTime updatedAt;

    public UserTuneResponse() {}

    public UserTuneResponse(UUID id, String userId, UUID songId,
                            Integer clipStartMs, Integer clipEndMs,
                            TuneStatus status, OffsetDateTime effectiveFrom,
                            OffsetDateTime effectiveTo, OffsetDateTime createdAt,
                            OffsetDateTime updatedAt) {
        this.id = id;
        this.userId = userId;
        this.songId = songId;
        this.clipStartMs = clipStartMs;
        this.clipEndMs = clipEndMs;
        this.status = status;
        this.effectiveFrom = effectiveFrom;
        this.effectiveTo = effectiveTo;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    // --- Getters & Setters ---
    public UUID getId() { return id; }
    public void setId(UUID id) { this.id = id; }

    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }  // ✅ String now

    public UUID getSongId() { return songId; }
    public void setSongId(UUID songId) { this.songId = songId; }

    public Integer getClipStartMs() { return clipStartMs; }
    public void setClipStartMs(Integer clipStartMs) { this.clipStartMs = clipStartMs; }

    public Integer getClipEndMs() { return clipEndMs; }
    public void setClipEndMs(Integer clipEndMs) { this.clipEndMs = clipEndMs; }

    public TuneStatus getStatus() { return status; }
    public void setStatus(TuneStatus status) { this.status = status; }

    public OffsetDateTime getEffectiveFrom() { return effectiveFrom; }
    public void setEffectiveFrom(OffsetDateTime effectiveFrom) { this.effectiveFrom = effectiveFrom; }

    public OffsetDateTime getEffectiveTo() { return effectiveTo; }
    public void setEffectiveTo(OffsetDateTime effectiveTo) { this.effectiveTo = effectiveTo; }

    public OffsetDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(OffsetDateTime createdAt) { this.createdAt = createdAt; }

    public OffsetDateTime getUpdatedAt() { return updatedAt; }
    public void setUpdatedAt(OffsetDateTime updatedAt) { this.updatedAt = updatedAt; }
}
