<<<<<<< HEAD
package com.cmts.auth.api;

import com.cmts.auth.core.AdminService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/admin")
public class AdminController {

    private final AdminService adminService;

    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }

    // ✅ Block user
    @PostMapping("/users/{phone}/block")
    public ResponseEntity<String> blockUser(@PathVariable String phone) {
        adminService.blockUser(phone);
        return ResponseEntity.ok("User blocked: " + phone);
    }

    // ✅ Unblock user
    @PostMapping("/users/{phone}/unblock")
    public ResponseEntity<String> unblockUser(@PathVariable String phone) {
        adminService.unblockUser(phone);
        return ResponseEntity.ok("User unblocked: " + phone);
    }

    // ✅ Delete user
    @DeleteMapping("/users/{phone}")
    public ResponseEntity<String> deleteUser(@PathVariable String phone) {
        adminService.deleteUser(phone);
        return ResponseEntity.ok("User deleted: " + phone);
    }
}
=======
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
>>>>>>> c9e4bbe25581df24e62af7a075e318404ce950ae
