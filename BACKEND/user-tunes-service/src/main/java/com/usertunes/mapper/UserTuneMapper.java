package com.usertunes.mapper;

import com.usertunes.domain.UserTune;
import com.usertunes.dto.UserTuneResponse;

public final class UserTuneMapper {
    private UserTuneMapper() {}

    public static UserTuneResponse toResponse(UserTune e) {
        return new UserTuneResponse(
                e.getId(),
                e.getUserId(),
                e.getSongId(),
                e.getClipStartMs(),
                e.getClipEndMs(),
                e.getStatus(),
                e.getEffectiveFrom(),
                e.getEffectiveTo(),
                e.getCreatedAt(),
                e.getUpdatedAt()
        );
    }
}
