<<<<<<< HEAD
package com.cmts.auth.api.dto;

public class AuthResponse {
    private String accessToken;
    private String refreshToken;
    private Long expiresIn;
    private String role;

    public AuthResponse() {}

    public AuthResponse(String accessToken, String refreshToken, Long expiresIn, String role) {
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
        this.expiresIn = expiresIn;
        this.role = role;
    }

    public String getAccessToken() { return accessToken; }
    public void setAccessToken(String accessToken) { this.accessToken = accessToken; }

    public String getRefreshToken() { return refreshToken; }
    public void setRefreshToken(String refreshToken) { this.refreshToken = refreshToken; }

    public Long getExpiresIn() { return expiresIn; }
    public void setExpiresIn(Long expiresIn) { this.expiresIn = expiresIn; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}
=======
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
>>>>>>> c9e4bbe25581df24e62af7a075e318404ce950ae
