package com.example.catalog.repository;

import com.example.catalog.domain.Tune;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface TuneRepository extends JpaRepository<Tune, UUID>, JpaSpecificationExecutor<Tune> {

    // Fetch all by language (case-insensitive)
    List<Tune> findByLanguageIgnoreCase(String language);

    // Limit to 30 songs for that language
    List<Tune> findTop30ByLanguageIgnoreCase(String language);

    Optional<Tune> findByCode(String code);

    boolean existsByCode(String code);
}
