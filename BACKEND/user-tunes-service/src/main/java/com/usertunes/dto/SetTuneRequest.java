package com.usertunes.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.PositiveOrZero;

import java.util.UUID;

public class SetTuneRequest {
    @NotBlank(message = "UserId (phone number) cannot be blank")
    private String userId;   // 📱 phone number

    @NotNull(message = "SongId is required")
    private UUID songId;

    @NotNull @PositiveOrZero
    private Integer clipStartMs;

    @NotNull @Positive
    private Integer clipEndMs;

    // --- Getters & Setters ---
    public String getUserId() { return userId; }
    public void setUserId(String userId) { this.userId = userId; }

    public UUID getSongId() { return songId; }
    public void setSongId(UUID songId) { this.songId = songId; }

    public Integer getClipStartMs() { return clipStartMs; }
    public void setClipStartMs(Integer clipStartMs) { this.clipStartMs = clipStartMs; }

    public Integer getClipEndMs() { return clipEndMs; }
    public void setClipEndMs(Integer clipEndMs) { this.clipEndMs = clipEndMs; }
}
