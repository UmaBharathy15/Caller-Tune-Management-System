package com.usertunes.repository;

import com.usertunes.domain.TuneStatus;
import com.usertunes.domain.UserTune;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface UserTuneRepository extends JpaRepository<UserTune, UUID> {
    Optional<UserTune> findFirstByUserIdAndStatusOrderByEffectiveFromDesc(String userId, TuneStatus status);
    List<UserTune> findByUserIdOrderByEffectiveFromDesc(String userId);
}
