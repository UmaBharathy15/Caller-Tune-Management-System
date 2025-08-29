package com.cmts.auth.api.dto;


public class UserLoginRequest {
    private String phone;
    private String password;

    public UserLoginRequest() {}

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
