package com.example.media.repository;

import com.example.media.domain.MediaFile;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

public interface MediaRepository extends JpaRepository<MediaFile, UUID> {
}
