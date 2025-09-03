package com.usertunes.dto;

import java.time.OffsetDateTime;
import java.util.List;

public class ApiError {
    private String path;
    private int status;
    private String message;
    private List<String> errors;
    private OffsetDateTime timestamp;

    public ApiError() {}

    public ApiError(String path, int status, String message, List<String> errors, OffsetDateTime timestamp) {
        this.path = path;
        this.status = status;
        this.message = message;
        this.errors = errors;
        this.timestamp = timestamp;
    }

    public String getPath() { return path; }
    public void setPath(String path) { this.path = path; }

    public int getStatus() { return status; }
    public void setStatus(int status) { this.status = status; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }

    public List<String> getErrors() { return errors; }
    public void setErrors(List<String> errors) { this.errors = errors; }

    public OffsetDateTime getTimestamp() { return timestamp; }
    public void setTimestamp(OffsetDateTime timestamp) { this.timestamp = timestamp; }
}
