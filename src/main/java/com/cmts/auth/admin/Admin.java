package com.cmts.auth.admin;


import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "admins")
public class Admin {

    @Id
    @Column(length=50)
    private String id;   // login id

    @Column(nullable=false, length=100)
    private String name;

    @Column(nullable=false, length=255)
    private String password;

    @Column(nullable=false)
    private boolean enabled = true;

    private LocalDateTime createdAt = LocalDateTime.now();

    public Admin() {}

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public boolean isEnabled() { return enabled; }
    public void setEnabled(boolean enabled) { this.enabled = enabled; }

    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }
}
