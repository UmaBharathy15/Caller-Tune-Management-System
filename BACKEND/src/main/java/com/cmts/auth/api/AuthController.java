package com.cmts.auth.api;

import com.cmts.auth.api.dto.*;
import com.cmts.auth.core.AuthService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final AuthService auth;

    public AuthController(AuthService auth) {
        this.auth = auth;
    }

    @PostMapping("/user/register")
    public ResponseEntity<?> register(@RequestBody UserRegisterRequest req) {
        auth.register(req);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/user/login")
    public ResponseEntity<AuthResponse> userLogin(@RequestBody UserLoginRequest req) {
        return ResponseEntity.ok(auth.userLogin(req));
    }

    @PostMapping("/user/forgot-password")
    public ResponseEntity<?> forgotPassword(@RequestBody ForgotPasswordRequest req) {
        auth.userForgotPassword(req);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/admin/login")
    public ResponseEntity<AuthResponse> adminLogin(@RequestBody AdminLoginRequest req) {
        return ResponseEntity.ok(auth.adminLogin(req));
    }
}

