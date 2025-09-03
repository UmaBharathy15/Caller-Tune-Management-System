import React, { useRef, useState } from "react";
import "./SongGrid.css";
import demoMp3 from "../../MainDashboardComponents/SongComponent/song1.mp3";

import cover1 from "../../MainDashboardComponents/slide1.jpeg";
import cover2 from "../../MainDashboardComponents/slide2.jpeg";
import cover3 from "../../MainDashboardComponents/slide3.jpeg";
import cover4 from "../../MainDashboardComponents/slide4.jpeg";

// Songs tagged with language
const demoSongs = [
  { id: "1", title: "Morning Breeze", lang: "English", src: demoMp3, cover: cover1 },
  { id: "2", title: "City Nights",    lang: "Hindi",   src: demoMp3, cover: cover2 },
  { id: "3", title: "Sunshine Walk",  lang: "Tamil",   src: demoMp3, cover: cover3 },
  { id: "4", title: "Ocean Drift",    lang: "Telugu",  src: demoMp3, cover: cover4 },
  { id: "5", title: "Soft Echo",      lang: "Hindi",   src: demoMp3, cover: cover2 },
  { id: "6", title: "Night Drive",    lang: "English", src: demoMp3, cover: cover3 },
  { id: "7", title: "Sky Dreams",     lang: "Tamil",   src: demoMp3, cover: cover1 },
  { id: "8", title: "Golden Hour",    lang: "Telugu",  src: demoMp3, cover: cover4 },
];

export default function SongGrid({ language }) {
  const audioRefs = useRef(new Map());
  const [currentId, setCurrentId] = useState(null);

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

  // ✅ if no language selected → show mix (all songs)
  const filteredSongs = language ? demoSongs.filter((s) => s.lang === language) : demoSongs;

  return (
    <div className="row g-2 row-cols-2 row-cols-md-3 row-cols-lg-6 songgrid">
      {filteredSongs.map((s) => (
        <div className="col" key={s.id}>
          <div className={`songcard ${currentId === s.id ? "playing" : ""}`}>
            <img src={s.cover} alt={s.title} className="cover" draggable={false} />
            <div className="title">{s.title}</div>

            <audio
              ref={(el) => registerRef(s.id, el)}
              src={s.src}
              preload="metadata"
              controls
              controlsList="noplaybackrate nodownload"
              onPlay={() => onPlay(s.id)}
              onPause={() => onPause(s.id)}
              onEnded={() => setCurrentId(null)}
            />
          </div>
        </div>
      ))}
    </div>
  );
}
