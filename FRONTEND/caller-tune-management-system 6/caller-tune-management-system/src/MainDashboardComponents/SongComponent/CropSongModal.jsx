// src/MainDashboardComponents/SongComponent/CropSongModal.jsx
import React, { useState, useRef } from "react";

const CropSongModal = ({ song, onClose, onConfirm }) => {
  const [startTime, setStartTime] = useState(0);
  const [endTime, setEndTime] = useState(30);
  const audioRef = useRef(null);

  const handlePreview = () => {
    if (audioRef.current) {
      audioRef.current.currentTime = startTime;
      audioRef.current.play();

      const stopAtEnd = () => {
        if (audioRef.current.currentTime >= endTime) {
          audioRef.current.pause();
          audioRef.current.removeEventListener("timeupdate", stopAtEnd);
        }
      };
      audioRef.current.addEventListener("timeupdate", stopAtEnd);
    }
  };

  const handleConfirm = () => {
    onConfirm({
      songId: song.id,
      startTime,
      endTime,
    });
  };

  return (
    <div className="crop-modal">
      <div className="crop-modal-content">
        <h2 className="text-center mb-4">🎵 Crop Your Caller Tune</h2>

        {/* Song player */}
        <audio ref={audioRef} src={song.src} controls className="w-full mb-4" />

        {/* Sliders */}
        <div className="mb-3">
          <label>Start Time: {startTime}s</label>
          <input
            type="range"
            min="0"
            max={endTime}
            value={startTime}
            onChange={(e) => setStartTime(Number(e.target.value))}
          />
        </div>

        <div className="mb-3">
          <label>End Time: {endTime}s</label>
          <input
            type="range"
            min={startTime}
            max={60}
            value={endTime}
            onChange={(e) => setEndTime(Number(e.target.value))}
          />
        </div>

        {/* Buttons */}
        <div className="crop-modal-buttons">
          <button className="btn-preview" onClick={handlePreview}>▶ Preview</button>
          <div>
            <button className="btn-cancel" onClick={onClose}>Cancel</button>
            <button className="btn-confirm" onClick={handleConfirm}>✅ Set Caller Tune</button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default CropSongModal;
