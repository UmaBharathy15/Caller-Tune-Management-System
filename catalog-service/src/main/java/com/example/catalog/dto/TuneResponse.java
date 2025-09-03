package com.example.catalog.dto;

import java.util.UUID;

public record TuneResponse(
        UUID id,
        String title,
        String language,
        Integer durationSec,
        String mediaId   // NEW
) {}