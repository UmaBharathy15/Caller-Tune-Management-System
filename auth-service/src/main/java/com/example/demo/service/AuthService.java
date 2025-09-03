package com.example.demo.service;

import com.example.demo.api.LoginRequest;
import com.example.demo.api.LoginResponse;
import com.example.demo.audit.LoginAudit;
import com.example.demo.audit.LoginAuditRepository;
import com.example.demo.security.JwtUtil;
import com.example.demo.user.User;
import com.example.demo.user.UserRepository;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.Optional;

@Service
public class AuthService {

    private final UserRepository users;
    private final PasswordEncoder encoder;
    private final JwtUtil jwt;
    private final LoginAuditRepository audits;

    public AuthService(UserRepository users, PasswordEncoder encoder, JwtUtil jwt, LoginAuditRepository audits) {
        this.users = users; this.encoder = encoder; this.jwt = jwt; this.audits = audits;
    }

    public LoginResponse login(LoginRequest req, HttpServletRequest http) {
        Optional<User> ou = users.findByUsername(req.getUsername());
        boolean ok = false; String reason = "user not found"; User u = null;

        if (ou.isPresent()) {
            u = ou.get();
            if ("ACTIVE".equals(u.getStatus()) && encoder.matches(req.getPassword(), u.getPasswordHash())) {
                ok = true; reason = "OK";
                u.setLastLoginAt(Instant.now());
                users.save(u);
            } else {
                reason = "bad credentials";
            }
        }

        audits.save(new LoginAudit(u != null ? u.getId() : null,
                req.getUsername(), ok, http.getRemoteAddr(), http.getHeader("User-Agent"), reason));

        if (!ok) throw new RuntimeException("Invalid credentials");
        String token = jwt.generateToken(u.getUsername(), u.getRole());
        return new LoginResponse(token);
    }
}
