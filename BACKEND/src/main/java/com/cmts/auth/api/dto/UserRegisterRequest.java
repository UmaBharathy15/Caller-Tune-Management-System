package com.cmts.auth.api.dto;


public class UserRegisterRequest {
    private String phone;
    private String name;
    private String password;

    public UserRegisterRequest() {}

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
