import React from "react";
import "./pagesplit.css";

export default function PageSplit({ leftOverlay = null, children, bgImage }) {
  const style = bgImage ? { "--split-bg-image": `url(${bgImage})` } : undefined;

  return (
    <div className="login-wrapper">
      {/* LEFT: 60% */}
      <div className="left-panel-img" style={style}>
        {leftOverlay && <div className="left-overlay">{leftOverlay}</div>}
      </div>

      {/* RIGHT: 40% */}
      <div className="right-panel">
        <div className="auth-card">
          {children}
        </div>
      </div>
    </div>
  );
}
