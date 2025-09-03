package com.example.demo.user;

import jakarta.persistence.*;
import java.time.Instant;

@Entity
@Table(name = "users",
       uniqueConstraints = {
         @UniqueConstraint(name = "uk_users_username", columnNames = "username"),
         @UniqueConstraint(name = "uk_users_email",    columnNames = "email")
       })
public class User {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable=false, length=50)
    private String username;

    @Column(nullable=false, length=120)
    private String email;

    @Column(name="password_hash", nullable=false, length=80)
    private String passwordHash;

    @Column(nullable=false, length=30)
    private String role;

    @Column(nullable=false, length=20)
    private String status = "ACTIVE";

    @Column(name="last_login_at")
    private Instant lastLoginAt;

    public User() {}

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPasswordHash() { return passwordHash; }
    public void setPasswordHash(String passwordHash) { this.passwordHash = passwordHash; }
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    public Instant getLastLoginAt() { return lastLoginAt; }
    public void setLastLoginAt(Instant lastLoginAt) { this.lastLoginAt = lastLoginAt; }
}
