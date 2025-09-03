<<<<<<< HEAD
package com.cmts.auth.api.dto;


public class UserLoginRequest {
    private String phone;
    private String password;
    // getters + setters

    public UserLoginRequest(String phone2, String password2) {}

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
=======
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
>>>>>>> c9e4bbe25581df24e62af7a075e318404ce950ae
