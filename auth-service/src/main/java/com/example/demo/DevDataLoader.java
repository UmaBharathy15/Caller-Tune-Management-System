package com.example.demo;

import com.example.demo.user.User;
import com.example.demo.user.UserRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import org.springframework.security.crypto.password.PasswordEncoder;

@Component
public class DevDataLoader implements CommandLineRunner {

    private final UserRepository repo;
    private final PasswordEncoder encoder;

    public DevDataLoader(UserRepository repo, PasswordEncoder encoder) {
        this.repo = repo; this.encoder = encoder;
    }

    @Override
    public void run(String... args) {
        if (repo.findByUsername("admin").empty() != null) {
            User u = new User();
            u.setUsername("admin");
            u.setEmail("admin@example.com");
            u.setPasswordHash(encoder.encode("admin123"));
            u.setRole("ROLE_ADMIN");
            u.setStatus("ACTIVE");
            repo.save(u);
            System.out.println("Seeded admin/admin123");
        }
    }
}
