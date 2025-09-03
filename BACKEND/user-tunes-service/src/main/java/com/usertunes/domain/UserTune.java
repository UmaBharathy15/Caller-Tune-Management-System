package com.usertunes.domain;

import jakarta.persistence.*;
import org.hibernate.annotations.UuidGenerator;

import java.time.OffsetDateTime;
import java.util.UUID;

@Entity
@Table(name = "user_tunes", indexes = {
        @Index(name = "idx_user_tunes_user_id", columnList = "user_id"),
        @Index(name = "idx_user_tunes_song_id", columnList = "song_id")
})
public class UserTune {

    @Id
    @GeneratedValue
    @UuidGenerator
    private UUID id;

    @Column(name = "user_id", nullable = false, length = 15)
    private String userId;   // 📱 phone number

    @Column(name = "song_id", nullable = false)
    private UUID songId;

    @Column(name = "clip_start_ms", nullable = false)
    private Integer clipStartMs;

    @Column(name = "clip_end_ms", nullable = false)
    private Integer clipEndMs;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 16)
    private TuneStatus status;

    @Column(name = "effective_from", nullable = false)
    private OffsetDateTime effectiveFrom;

    @Column(name = "effective_to")
    private OffsetDateTime effectiveTo;

    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    private OffsetDateTime updatedAt;

    // Getters & Setters
    public UUID getId() { return id; }
    public void setId(UUID id) { this.id = id; }

    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }

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
