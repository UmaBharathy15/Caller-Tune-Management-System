package com.example.catalog.mapper;

import com.example.catalog.domain.Tune;
import com.example.catalog.dto.TuneResponse;

public class TuneMapper {
    public static TuneResponse toResponse(Tune t) {
        return new TuneResponse(
                t.getId(),
                t.getTitle(),
                t.getLanguage(), t.getDurationSec(),
                t.getMediaId()
        );
    }
}