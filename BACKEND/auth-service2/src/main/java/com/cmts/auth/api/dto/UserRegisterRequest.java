<<<<<<< HEAD
package com.cmts.auth.api.dto;
import io.swagger.v3.oas.annotations.media.Schema;

public class UserRegisterRequest {


	    @Schema(description = "User phone number", example = "9876543210")
	    private String phone;

	    @Schema(description = "Full name of the user", example = "John Doe")
	    private String name;

	    @Schema(description = "Password for the account", example = "password123")
	    private String password;

    // Getters and Setters
    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
}
=======
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
>>>>>>> c9e4bbe25581df24e62af7a075e318404ce950ae
