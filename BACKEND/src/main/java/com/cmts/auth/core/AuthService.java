package com.cmts.auth.core;

import com.cmts.auth.api.dto.*;
import com.cmts.auth.admin.Admin;
import com.cmts.auth.admin.AdminRepository;
import com.cmts.auth.security.JwtService;
import com.cmts.auth.user.User;
import com.cmts.auth.user.UserRepository;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AuthService {

    private final UserRepository users;
    private final AdminRepository admins;
    private final PasswordEncoder encoder;
    private final JwtService jwt;

    public AuthService(UserRepository users, AdminRepository admins, PasswordEncoder encoder, JwtService jwt) {
        this.users = users;
        this.admins = admins;
        this.encoder = encoder;
        this.jwt = jwt;
    }

    public void register(UserRegisterRequest req) {
        if (users.existsByPhone(req.getPhone())) throw new IllegalArgumentException("Phone already registered");

        User u = new User();
        u.setPhone(req.getPhone());
        u.setName(req.getName());
        u.setPassword(encoder.encode(req.getPassword()));
        u.setEnabled(true);
        users.save(u);
    }

    public AuthResponse userLogin(UserLoginRequest req) {
        User u = users.findByPhone(req.getPhone())
                .orElseThrow(() -> new BadCredentialsException("Invalid phone/password"));
        if (!encoder.matches(req.getPassword(), u.getPassword()))
            throw new BadCredentialsException("Invalid phone/password");

        return new AuthResponse(
                jwt.generateAccess(u.getPhone(), "USER"),
                jwt.generateRefresh(u.getPhone()),
                3600000L,
                "USER"
        );
    }

    public void userForgotPassword(ForgotPasswordRequest req) {
        User u = users.findByPhone(req.getPhone())
                .orElseThrow(() -> new IllegalArgumentException("User not found"));
        u.setPassword(encoder.encode(req.getNewPassword()));
        users.save(u);
    }

    public AuthResponse adminLogin(AdminLoginRequest req) {
        Admin a = admins.findById(req.getAdminId())
                .orElseThrow(() -> new BadCredentialsException("Invalid credentials"));
        if (!encoder.matches(req.getPassword(), a.getPassword()))
            throw new BadCredentialsException("Invalid credentials");

        return new AuthResponse(
                jwt.generateAccess(a.getId(), "ADMIN"),
                jwt.generateRefresh(a.getId()),
                3600000L,
                "ADMIN"
        );
    }
}
