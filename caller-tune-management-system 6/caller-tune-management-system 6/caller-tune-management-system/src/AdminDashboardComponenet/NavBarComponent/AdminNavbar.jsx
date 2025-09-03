import React from "react";
import { useNavigate } from "react-router-dom";

export default function AdminNavbar() {
  const navigate = useNavigate();

  const handleBrandClick = (e) => {
    e.preventDefault();
    window.location.reload(); // reload page
  };

  const handleLogout = () => {
    localStorage.removeItem("token"); // clear JWT token if using auth
    navigate("/admin-login"); // redirect to admin login page
  };

  return (
    <nav className="navbar navbar-dark bg-dark px-3 d-flex justify-content-between align-items-center">
      {/* Left: Brand */}
      <a
        href="/"
        onClick={handleBrandClick}
        className="d-flex align-items-center text-decoration-none"
      >
        <span
          style={{
            width: "32px",
            height: "32px",
            borderRadius: "50%",
            backgroundColor: "red",
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            marginRight: "8px",
          }}
        >
          <i className="bi bi-music-note-beamed text-white"></i>
        </span>
        <span className="fw-bold fs-5 text-danger">VZ RingWave</span>
      </a>

      {/* Right: Avatar with dropdown */}
      <div className="dropdown">
        <button
          className="btn border-0 bg-transparent dropdown-toggle d-flex align-items-center"
          id="adminMenu"
          data-bs-toggle="dropdown"
          aria-expanded="false"
        >
          <i className="bi bi-person-circle fs-3 text-white"></i>
        </button>
        <ul
          className="dropdown-menu dropdown-menu-end shadow-sm"
          aria-labelledby="adminMenu"
        >
          <li>
            <button className="dropdown-item text-danger" onClick={handleLogout}>
              <i className="bi bi-box-arrow-right me-2"></i> Logout
            </button>
          </li>
        </ul>
      </div>
    </nav>
  );
}
