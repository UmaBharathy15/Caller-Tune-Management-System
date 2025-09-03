package com.usertunes.service;

import com.usertunes.domain.TuneStatus;
import com.usertunes.domain.UserTune;
import com.usertunes.dto.SetTuneRequest;
import com.usertunes.dto.UpdateClipRequest;
import com.usertunes.dto.UserTuneResponse;
import com.usertunes.mapper.UserTuneMapper;
import com.usertunes.repository.UserTuneRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.OffsetDateTime;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
@Transactional
public class UserTuneServiceImpl implements UserTuneService {

    private final UserTuneRepository repository;

    public UserTuneServiceImpl(UserTuneRepository repository) {
        this.repository = repository;
    }

    @Override
    public UserTuneResponse setTune(SetTuneRequest request) {
        validateClip(request.getClipStartMs(), request.getClipEndMs());

        // deactivate current active tune if exists
        Optional<UserTune> currentActive =
                repository.findFirstByUserIdAndStatusOrderByEffectiveFromDesc(request.getUserId(), TuneStatus.ACTIVE);

        OffsetDateTime now = now();
        currentActive.ifPresent(active -> {
            active.setStatus(TuneStatus.INACTIVE);
            active.setEffectiveTo(now);
            active.setUpdatedAt(now);
            repository.save(active);
        });

        // create new tune
        UserTune entity = new UserTune();
        entity.setUserId(request.getUserId()); // 📱 phone number
        entity.setSongId(request.getSongId());
        entity.setClipStartMs(request.getClipStartMs());
        entity.setClipEndMs(request.getClipEndMs());
        entity.setStatus(TuneStatus.ACTIVE);
        entity.setEffectiveFrom(now);
        entity.setCreatedAt(now);
        entity.setUpdatedAt(now);

        return UserTuneMapper.toResponse(repository.save(entity));
    }
    @Override
    public UserTuneResponse updateClip(UUID userTuneId, UpdateClipRequest request) {
        validateClip(request.getClipStartMs(), request.getClipEndMs());

        UserTune entity = repository.findById(userTuneId)
                .orElseThrow(() -> new EntityNotFoundException("UserTune not found: " + userTuneId));

        entity.setClipStartMs(request.getClipStartMs());
        entity.setClipEndMs(request.getClipEndMs());
        entity.setUpdatedAt(now());

        return UserTuneMapper.toResponse(repository.save(entity));
    }

    @Override
    @Transactional(readOnly = true)
    public UserTuneResponse getActiveTune(String userId) {
        return repository.findFirstByUserIdAndStatusOrderByEffectiveFromDesc(userId, TuneStatus.ACTIVE)
                .map(UserTuneMapper::toResponse)
                .orElseThrow(() -> new EntityNotFoundException("Active tune not found for user: " + userId));
    }

    @Override
    @Transactional(readOnly = true)
    public List<UserTuneResponse> getHistory(String userId) {
        return repository.findByUserIdOrderByEffectiveFromDesc(userId)
                .stream()
                .map(UserTuneMapper::toResponse)
                .toList();
    }

    @Override
    public void deleteTune(UUID userTuneId) {
        if (!repository.existsById(userTuneId)) {
            throw new EntityNotFoundException("UserTune not found: " + userTuneId);
        }
        repository.deleteById(userTuneId);
    }

    // --- Helpers ---

    private void validateClip(Integer start, Integer end) {
        if (start == null || end == null || start < 0 || end <= 0 || end <= start) {
            throw new IllegalArgumentException("Invalid clip range: start=" + start + ", end=" + end);
        }
        int maxClipMs = 30_000; // 30 seconds
        if ((end - start) > maxClipMs) {
            throw new IllegalArgumentException("Clip length exceeds 30 seconds");
        }
    }

    private OffsetDateTime now() {
        return OffsetDateTime.now();
    }
}
