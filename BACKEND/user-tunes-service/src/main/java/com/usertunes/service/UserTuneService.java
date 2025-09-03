package com.usertunes.service;

import com.usertunes.dto.SetTuneRequest;
import com.usertunes.dto.UpdateClipRequest;
import com.usertunes.dto.UserTuneResponse;

import java.util.List;
import java.util.UUID;

public interface UserTuneService {
    UserTuneResponse setTune(SetTuneRequest request);
    UserTuneResponse updateClip(UUID userTuneId, UpdateClipRequest request);
    UserTuneResponse getActiveTune(String userId);   // 🔄 String now
    List<UserTuneResponse> getHistory(String userId); // 📱 phone number
    void deleteTune(UUID userTuneId);
}

