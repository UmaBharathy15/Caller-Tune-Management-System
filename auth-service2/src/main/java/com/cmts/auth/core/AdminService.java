<<<<<<< HEAD
package com.cmts.auth.core;

import org.springframework.stereotype.Service;

@Service
public class AdminService {

    public void blockUser(String phone) {
        // TODO: implement real block logic
        System.out.println("Blocking user: " + phone);
    }

    public void unblockUser(String phone) {
        // TODO: implement real unblock logic
        System.out.println("Unblocking user: " + phone);
    }

    public void deleteUser(String phone) {
        // TODO: implement real delete logic
        System.out.println("Deleting user: " + phone);
    }
}
=======
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
>>>>>>> c9e4bbe25581df24e62af7a075e318404ce950ae
