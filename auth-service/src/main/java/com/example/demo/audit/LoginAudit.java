package com.example.demo.audit;

import jakarta.persistence.*;
import java.time.Instant;

@Entity
@Table(name = "login_audit")
public class LoginAudit {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long userId;
    private String username;
    private boolean success;
    private String ip;

    @Column(length=200)
    private String userAgent;

    @Column(length=200)
    private String reason;

    private Instant at = Instant.now();

    public LoginAudit() {}

    public LoginAudit(Long userId, String username, boolean success,
                      String ip, String userAgent, String reason) {
        this.userId = userId;
        this.username = username;
        this.success = success;
        this.ip = ip;
        this.userAgent = userAgent;
        this.reason = reason;
        this.at = Instant.now();
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public Long getUserId() { return userId; }
    public void setUserId(Long userId) { this.userId = userId; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public boolean isSuccess() { return success; }
    public void setSuccess(boolean success) { this.success = success; }
    public String getIp() { return ip; }
    public void setIp(String ip) { this.ip = ip; }
    public String getUserAgent() { return userAgent; }
    public void setUserAgent(String userAgent) { this.userAgent = userAgent; }
    public String getReason() { return reason; }
    public void setReason(String reason) { this.reason = reason; }
    public Instant getAt() { return at; }
    public void setAt(Instant at) { this.at = at; }
}
