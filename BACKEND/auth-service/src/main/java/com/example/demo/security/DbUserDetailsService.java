package com.example.demo.security;

import com.example.demo.user.User;
import com.example.demo.user.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class DbUserDetailsService implements UserDetailsService {
    private final UserRepository repo;

    public DbUserDetailsService(UserRepository repo) { this.repo = repo; }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User u = repo.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("User not found"));
        boolean enabled = "ACTIVE".equalsIgnoreCase(u.getStatus());

        // If DB stores ROLE_X, map to roles("X")
        String roleNoPrefix = u.getRole() != null ? u.getRole().replace("ROLE_", "") : "USER";

        return org.springframework.security.core.userdetails.User
                .withUsername(u.getUsername())
                .password(u.getPasswordHash())  // BCrypt hash expected
                .roles(roleNoPrefix)
                .disabled(!enabled)
                .build();
    }
}
