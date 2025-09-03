import React, { useEffect, useState } from "react";
import { getAllMedia, getStreamUrl, getClipUrl } from "./src/api/mediaApi";

function SongList() {
  const [songs, setSongs] = useState([]);
  const [selectedSong, setSelectedSong] = useState(null);

  useEffect(() => {
    getAllMedia()
      .then(setSongs)
      .catch(err => console.error("Error fetching songs:", err));
  }, []);

  return (
    <div className="song-list">
      <h2>Available Songs</h2>

      {songs.length === 0 && <p>Loading songs...</p>}

      <ul>
        {songs.map(song => (
          <li key={song.id}>
            🎵 {song.filename} ({song.language})
            <button onClick={() => setSelectedSong(getStreamUrl(song.id))}>
              ▶ Full
            </button>
            <button onClick={() => setSelectedSong(getClipUrl(song.id, 10, 15))}>
              🎶 Clip
            </button>
          </li>
        ))}
      </ul>

      {selectedSong && (
        <div className="player">
          <h3>Now Playing</h3>
          <audio controls autoPlay src={selectedSong}></audio>
        </div>
      )}
    </div>
  );
}

export default SongList;
