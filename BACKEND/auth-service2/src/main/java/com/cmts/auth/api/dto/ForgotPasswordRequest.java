<<<<<<< HEAD
package com.cmts.auth.api.dto;

public class ForgotPasswordRequest {
    private String phone;
    private String newPassword;
    // getters + setters

    public ForgotPasswordRequest(String phone2) {}

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getNewPassword() { return newPassword; }
    public void setNewPassword(String newPassword) { this.newPassword = newPassword; }
}

=======
package com.cmts.auth.api.dto;

public class ForgotPasswordRequest {
    private String phone;
    private String newPassword;

    public ForgotPasswordRequest() {}

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getNewPassword() { return newPassword; }
    public void setNewPassword(String newPassword) { this.newPassword = newPassword; }
}

>>>>>>> c9e4bbe25581df24e62af7a075e318404ce950ae
