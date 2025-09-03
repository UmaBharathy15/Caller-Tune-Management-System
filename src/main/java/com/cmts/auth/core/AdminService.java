package com.cmts.auth.core;

import com.cmts.auth.user.User;
import com.cmts.auth.user.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

    private final UserRepository users;

    public AdminService(UserRepository users) {
        this.users = users;
    }

    public void blockUser(String phone) {
        User u = users.findByPhone(phone).orElseThrow(() -> new IllegalArgumentException("User not found"));
        u.setEnabled(false);
        users.save(u);
    }

    public void unblockUser(String phone) {
        User u = users.findByPhone(phone).orElseThrow(() -> new IllegalArgumentException("User not found"));
        u.setEnabled(true);
        users.save(u);
    }

    public void deleteUser(String phone) {
        User u = users.findByPhone(phone).orElseThrow(() -> new IllegalArgumentException("User not found"));
        users.delete(u);
    }
}
