package com.usertunes.web;

import com.usertunes.dto.SetTuneRequest;
import com.usertunes.dto.UpdateClipRequest;
import com.usertunes.dto.UserTuneResponse;
import com.usertunes.service.UserTuneService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.ResponseEntity;
import java.util.List;
import java.util.UUID;

@Tag(name = "User Tunes", description = "Manage user's caller tunes and clip windows")
@RestController
@RequestMapping("/api/v1/user-tunes")
public class UserTuneController {

    private final UserTuneService service;

    public UserTuneController(UserTuneService service) {
        this.service = service;
    }
   
    @PostMapping("/user-tunes")
    public ResponseEntity<UserTuneResponse> setUserTune(@RequestBody SetTuneRequest request) {
        return ResponseEntity.ok(UserTuneService.setUserTune(request));
    }

    @Operation(summary = "Set and activate a tune for a user")
    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public UserTuneResponse setTune(@Valid @RequestBody SetTuneRequest request) {
        return service.setTune(request);
    }

    @Operation(summary = "Update the clip window for an existing user tune")
    @PatchMapping("/{id}/clip")
    public UserTuneResponse updateClip(@PathVariable("id") UUID id,
                                       @Valid @RequestBody UpdateClipRequest request) {
        return service.updateClip(id, request);
    }

    @Operation(summary = "Get tune history for a user by mobile number")
    @GetMapping("/history/{mobile}")
    public List<UserTuneResponse> history(
            @Parameter(description = "User's mobile number", example = "9876543210")
            @PathVariable("mobile") String mobileNumber) {
        return service.getHistory(mobileNumber);
    }

    @Operation(summary = "Get the active tune for a user by mobile number")
    @GetMapping("/active/{mobile}")
    public UserTuneResponse getActive(
            @Parameter(description = "User's mobile number", example = "9876543210")
            @PathVariable("mobile") String mobileNumber) {
        return service.getActiveTune(mobileNumber);
    }

    @Operation(summary = "Delete a user tune by id")
    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable("id") UUID id) {
        service.deleteTune(id);
    }
}
