import React from "react";

export default function YourCallerTune({ callerTune }) {
  return (
    <div className="mt-5 pt-5">
      <h3 className="mb-3">🎵 Your Caller Tune</h3>
      {callerTune ? (
        <div className="alert alert-success">
          ✅ Your current Caller Tune: <strong>{callerTune.title}</strong> 
          ({callerTune.startTime}s – {callerTune.endTime}s)
        </div>
      ) : (
        <div className="alert alert-warning">
          ⚠ No Caller Tune – you have not selected your caller tune yet.
        </div>
      )}
    </div>
  );
}
