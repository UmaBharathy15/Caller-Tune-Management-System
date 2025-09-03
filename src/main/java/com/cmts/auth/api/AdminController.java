package com.cmts.auth.api;

import com.cmts.auth.core.AdminService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/admin")
@PreAuthorize("hasRole('ADMIN')")
public class AdminController {

    private final AdminService admin;

    public AdminController(AdminService admin) {
        this.admin = admin;
    }

    @PostMapping("/users/{phone}/block")
    public ResponseEntity<?> block(@PathVariable String phone) {
        admin.blockUser(phone);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/users/{phone}/unblock")
    public ResponseEntity<?> unblock(@PathVariable String phone) {
        admin.unblockUser(phone);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/users/{phone}")
    public ResponseEntity<?> delete(@PathVariable String phone) {
        admin.deleteUser(phone);
        return ResponseEntity.ok().build();
    }
}
