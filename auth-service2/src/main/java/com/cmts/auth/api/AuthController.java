<<<<<<< HEAD
package com.cmts.auth.api;

import com.cmts.auth.api.dto.*;
import com.cmts.auth.core.AuthService;
import com.cmts.auth.core.AdminService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.cmts.auth.api.dto.UserLoginRequest;
import com.cmts.auth.api.dto.UserRegisterRequest;
import com.cmts.auth.api.dto.ForgotPasswordRequest;
import com.cmts.auth.api.dto.AdminLoginRequest;
import com.cmts.auth.api.dto.AuthResponse;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final AuthService authService;
    private final AdminService adminService;

    public AuthController(AuthService authService, AdminService adminService) {
        this.authService = authService;
        this.adminService = adminService;
    }

    @Operation(summary = "User Register", description = "Registers a new user")
    @PostMapping("/user/register")
    public ResponseEntity<String> register(@RequestBody UserRegisterRequest req) {
        authService.register(req);
        return ResponseEntity.ok("User registered successfully");
    }

    @Operation(summary = "User Login", description = "Logs in a user")
    @PostMapping("/user/login")
    public ResponseEntity<AuthResponse> login(@RequestBody UserLoginRequest req) {
        return ResponseEntity.ok(authService.userLogin(req));
    }

    @Operation(summary = "Forgot Password", description = "Resets user password")
    @PostMapping("/user/forgot-password")
    public ResponseEntity<String> forgotPassword(@RequestBody ForgotPasswordRequest req) {
        authService.userForgotPassword(req);
        return ResponseEntity.ok("Password updated successfully");
    }

    @Operation(summary = "Admin Login", description = "Logs in an admin")
    @PostMapping("/admin/login")
    public ResponseEntity<AuthResponse> adminLogin(@RequestBody AdminLoginRequest req) {
        return ResponseEntity.ok(authService.adminLogin(req));
    }

    @Operation(summary = "Block User", description = "Block a user by phone (Admin only)")
    @PostMapping("/admin/users/{phone}/block")
    public ResponseEntity<String> blockUser(
            @Parameter(description = "Phone number of the user to block", example = "9876543210")
            @PathVariable String phone) {
        adminService.blockUser(phone);
        return ResponseEntity.ok("User blocked: " + phone);
    }
}
=======
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

>>>>>>> c9e4bbe25581df24e62af7a075e318404ce950ae
