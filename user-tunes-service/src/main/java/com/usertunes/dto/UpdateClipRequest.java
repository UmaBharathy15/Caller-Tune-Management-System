package com.usertunes.dto;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.PositiveOrZero;

public class UpdateClipRequest {
    @NotNull @PositiveOrZero
    private Integer clipStartMs;

    @NotNull @Positive
    private Integer clipEndMs;

    public Integer getClipStartMs() { return clipStartMs; }
    public void setClipStartMs(Integer clipStartMs) { this.clipStartMs = clipStartMs; }

    public Integer getClipEndMs() { return clipEndMs; }
    public void setClipEndMs(Integer clipEndMs) { this.clipEndMs = clipEndMs; }
}
