import React, { useRef, useState } from "react";
import { useNavigate } from "react-router-dom";
import "./SongGrid.css";
import CropSongModal from "./CropSongModal";

import demoMp3 from "./song1.mp3";
import cover1 from "./image.jpeg";
import cover2 from "./image.jpeg";
import cover3 from "./image.jpeg";
import cover4 from "./image.jpeg";

const demoSongs = [
  { id: "1", title: "Morning Breeze", lang: "English", src: demoMp3, cover: cover1 },
  { id: "2", title: "City Nights", lang: "Hindi", src: demoMp3, cover: cover2 },
  { id: "3", title: "Sunshine Walk", lang: "Tamil", src: demoMp3, cover: cover3 },
  { id: "4", title: "Ocean Drift", lang: "Telugu", src: demoMp3, cover: cover4 },
  { id: "5", title: "Soft Echo", lang: "Hindi", src: demoMp3, cover: cover2 },
  { id: "6", title: "Night Drive", lang: "English", src: demoMp3, cover: cover3 },
  { id: "7", title: "Sky Dreams", lang: "Tamil", src: demoMp3, cover: cover1 },
  { id: "8", title: "Golden Hour", lang: "Telugu", src: demoMp3, cover: cover4 },
  { id: "9", title: "Lost Stars", lang: "English", src: demoMp3, cover: cover2 },
  { id: "10", title: "Calm Seas", lang: "Hindi", src: demoMp3, cover: cover3 },
  { id: "11", title: "Chill Beats", lang: "Tamil", src: demoMp3, cover: cover1 },
  { id: "12", title: "Night Sky", lang: "Telugu", src: demoMp3, cover: cover4 },
];

export default function SongGrid({ language, setCallerTune, isLoggedIn, previewOnly = false }) {
  const audioRefs = useRef(new Map());
  const [currentId, setCurrentId] = useState(null);
  const [selectedSong, setSelectedSong] = useState(null);
  const navigate = useNavigate();

  const registerRef = (id, el) => {
    if (!el) audioRefs.current.delete(id);
    else audioRefs.current.set(id, el);
  };

  const pauseAllExcept = (exceptId) => {
    audioRefs.current.forEach((audio, id) => {
      if (id !== exceptId && !audio.paused) audio.pause();
    });
  };

  const onPlay = (id) => {
    pauseAllExcept(id);
    setCurrentId(id);
  };

  const onPause = (id) => {
    if (currentId === id) setCurrentId(null);
  };

  const filteredSongs =
    language === "All Songs" ? demoSongs : demoSongs.filter((s) => s.lang === language);

  const handleSetCallerTune = ({ songId, startTime, endTime }) => {
    const chosenSong = demoSongs.find((s) => s.id === songId);
    const tuneData = { ...chosenSong, startTime, endTime };

    if (setCallerTune) setCallerTune(tuneData);
    setSelectedSong(null);

    alert("🎉 Your Caller Tune has been set successfully!");
  };

  const handleClickSetTune = (song) => {
    if (!isLoggedIn) {
      alert("⚠ Please login to set your Caller Tune!");
      navigate("/login");
      return;
    }
    setSelectedSong(song);
  };

  return (
    <>
      <div className="row g-2 row-cols-2 row-cols-md-3 row-cols-lg-6 songgrid">
        {filteredSongs.map((s) => (
          <div className="col" key={s.id}>
            <div className={`songcard ${currentId === s.id ? "playing" : ""}`}>
              <img src={s.cover} alt={s.title} className="cover" draggable={false} />
              <div className="title" title={s.title}>
                {s.title}
              </div>

              <audio
                ref={(el) => registerRef(s.id, el)}
                src={s.src}
                preload="metadata"
                className="audio"
                controls
                controlsList="noplaybackrate nodownload"
                onPlay={() => onPlay(s.id)}
                onPause={() => onPause(s.id)}
                onEnded={() => setCurrentId(null)}
              />

              {/* ✅ Only show Set Caller Tune button if NOT previewOnly */}
              {!previewOnly && (
                <button
                  className="btn btn-sm btn-primary mt-2"
                  onClick={() => handleClickSetTune(s)}
                >
                  Set Caller Tune
                </button>
              )}
            </div>
          </div>
        ))}
      </div>

      {/* Crop Modal (only if user is logged in and not preview mode) */}
      {selectedSong && !previewOnly && (
        <CropSongModal
          song={selectedSong}
          onClose={() => setSelectedSong(null)}
          onConfirm={handleSetCallerTune}
        />
      )}
    </>
  );
}
