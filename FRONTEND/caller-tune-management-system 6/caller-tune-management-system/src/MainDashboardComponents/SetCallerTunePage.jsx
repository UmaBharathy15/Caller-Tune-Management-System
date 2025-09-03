import React from "react";
import SongGrid from "./SongComponent/SongGrid";

export default function SetCallerTunePage({ language, setCallerTune, isLoggedIn }) {
  return (
    <div className="mt-5 pt-4">
      <h3 className="mb-3">🎵 Set Your Caller Tune</h3>
      <p className="text-muted">
        Browse songs below, crop your favorite part, and set it as your Caller Tune.
      </p>

      <SongGrid
        language={language}
        setCallerTune={setCallerTune}
        isLoggedIn={isLoggedIn}
      />
    </div>
  );
}
