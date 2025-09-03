<<<<<<< HEAD
package com.cmts.auth.api.dto;

public class AdminLoginRequest {
    private String adminId;
    private String password;
    // getters + setters

    public AdminLoginRequest() {} // required for JSON deserialization

    public AdminLoginRequest(String adminId, String password) {
        this.adminId = adminId;
        this.password = password;
    }

    public String getAdminId() { return adminId; }
    public void setAdminId(String adminId) { this.adminId = adminId; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
=======
package com.cmts.auth.api.dto;

public class AdminLoginRequest {
    private String adminId;
    private String password;

    public AdminLoginRequest() {}

    public String getAdminId() { return adminId; }
    public void setAdminId(String adminId) { this.adminId = adminId; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}

>>>>>>> c9e4bbe25581df24e62af7a075e318404ce950ae
