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

