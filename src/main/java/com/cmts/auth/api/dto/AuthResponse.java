package com.cmts.auth.api.dto;


public class AuthResponse {
    private String accessToken;
    private String refreshToken;
    private long expiresInMs;
    private String role;

    public AuthResponse() {}

    public AuthResponse(String accessToken, String refreshToken, long expiresInMs, String role) {
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
        this.expiresInMs = expiresInMs;
        this.role = role;
    }

    public String getAccessToken() { return accessToken; }
    public void setAccessToken(String accessToken) { this.accessToken = accessToken; }

    public String getRefreshToken() { return refreshToken; }
    public void setRefreshToken(String refreshToken) { this.refreshToken = refreshToken; }

    public long getExpiresInMs() { return expiresInMs; }
    public void setExpiresInMs(long expiresInMs) { this.expiresInMs = expiresInMs; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}
