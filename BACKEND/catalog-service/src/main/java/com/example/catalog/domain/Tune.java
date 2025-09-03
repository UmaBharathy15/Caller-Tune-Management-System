package com.example.catalog.domain;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "tune")
public class Tune {
    @Id
    @GeneratedValue
    private UUID id;

    @Column(nullable = false)
    private String title;

    @Column(unique = true, length = 64, nullable = false)
    private String code;

    private Integer durationSec;

    /** Reference to media-service record */
    @Column(length = 64, nullable = false)
    private String mediaId;

    /** NEW: Language field */
    @Column(length = 32, nullable = false)
    private String language;

    public Tune() {}

    // Getters / Setters
    public UUID getId() { return id; }
    public void setId(UUID id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public Integer getDurationSec() { return durationSec; }
    public void setDurationSec(Integer durationSec) { this.durationSec = durationSec; }

    public String getMediaId() { return mediaId; }
    public void setMediaId(String mediaId) { this.mediaId = mediaId; }

    public String getLanguage() { return language; }
    public void setLanguage(String language) { this.language = language; }
}