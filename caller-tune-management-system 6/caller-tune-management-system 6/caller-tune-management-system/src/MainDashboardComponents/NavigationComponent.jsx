import React, { useState } from "react";
import { Link } from "react-router-dom";
import "./NavigationComponent.css";

/* Left – brand */
function Brand() {
  const handleBrandClick = (e) => {
    e.preventDefault();
    window.location.href = "/";
  };

  return (
    <a
      href="/"
      onClick={handleBrandClick}
      className="brand-mark ps-2 ps-sm-3 text-decoration-none"
    >
      <span className="brand-dot">
        <i className="bi bi-music-note-beamed" />
      </span>
      <span className="brand-text">VZ RingWave</span>
    </a>
  );
}

/* Middle – nav links */
function TopLinks() {
  return (
    <nav className="nav-links d-none d-md-flex">
      <Link to="/set-caller-tune">Set Caller Tune</Link>
      <Link to="/your-caller-tune">Your Caller Tune</Link>
    </nav>
  );
}

/* Right – language dropdown */
function LanguageDropdown({ onLanguageChange }) {
  const [language, setLanguage] = useState("Music Language");

  const handleSelect = (opt) => () => {
    setLanguage(opt);
    if (onLanguageChange) onLanguageChange(opt);
  };

  return (
    <div className="dropdown">
      <button
        className="btn lang-btn dropdown-toggle px-3 py-2 rounded-3"
        type="button"
        id="languageDropdown"
        data-bs-toggle="dropdown"
        aria-expanded="false"
      >
        {language}
      </button>
      <ul className="dropdown-menu shadow-sm" aria-labelledby="languageDropdown">
        {["All Songs", "English", "Hindi", "Tamil", "Telugu"].map((opt) => (
          <li key={opt}>
            <button className="dropdown-item" onClick={handleSelect(opt)}>
              {opt}
            </button>
          </li>
        ))}
      </ul>
    </div>
  );
}

/* Right – avatar dropdown */
function AvatarMenu() {
  return (
    <div className="dropdown">
      <button
        className="avatar-toggle dropdown-toggle"
        id="avatarMenu"
        data-bs-toggle="dropdown"
        aria-expanded="false"
      >
        <span className="ring">
          <span className="inner">
            <i className="bi bi-person-circle"></i>
          </span>
        </span>
      </button>
      <ul
        className="dropdown-menu dropdown-menu-end shadow-sm"
        aria-labelledby="avatarMenu"
      >
        <li>
          <Link className="dropdown-item" to="/login">User Login</Link>
        </li>
        <li>
          <Link className="dropdown-item" to="/admin-login">Admin Login</Link>
        </li>
      </ul>
    </div>
  );
}

export default function NavigationComponent({ onLanguageChange }) {
  return (
    <nav className="navbar navbar-custom fixed-top">
      <div className="container-fluid position-relative h-100 d-flex align-items-center justify-content-between">
        <Brand />
        <div className="d-flex align-items-center gap-3">
          <TopLinks />
          <LanguageDropdown onLanguageChange={onLanguageChange} />
          <AvatarMenu />
        </div>
      </div>
    </nav>
  );
}
