// src/LoginComponents/AdminLogin/LoginPage.jsx
import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import PageSplit from "../PageSplit.jsx";   // ✅ correct relative import
import "./LoginPage.css";
import loginBg from "../phone.png";        // ✅ use your phone.png

export default function AdminLogin({ onAdminLoginSuccess }) {
  const [adminId, setAdminId] = useState("");
  const [password, setPassword] = useState("");
  const navigate = useNavigate();

  const onSubmit = (e) => {
    e.preventDefault();

    // 🔹 Replace with real backend validation later
    if (adminId === "admin" && password === "admin123") {
      alert("✅ Admin Login Successful");

      // update state in App.jsx
      if (onAdminLoginSuccess) onAdminLoginSuccess();

      // navigate to Admin Dashboard
      navigate("/admin-dashboard");
    } else {
      alert("❌ Invalid Admin ID or Password");
    }
  };

  // Left-side overlay text
  const leftOverlay = (
    <>
      <div />
      <h1 className="display-5 fw-bold lh-tight left-headline">
        Manage Caller Tunes with Ease.
      </h1>
      <div className="small opacity-75">
        <span aria-hidden="true">🔐</span> Secure access for administrators only.
      </div>
    </>
  );

  return (
    <PageSplit leftOverlay={leftOverlay} bgImage={loginBg}>
      <div className="admin-login-page">
        {/* Brand / Heading */}
        <div className="brand text-center mb-4">
          <h1 className="welcome-text">
            Welcome <span className="brand-logo">Admin Panel</span>
          </h1>
        </div>

        <h2 className="h5 fw-semibold mb-3">Admin Login</h2>
        <form onSubmit={onSubmit}>
          {/* Admin ID */}
          <div className="mb-3">
            <label className="form-label fw-medium">Admin ID</label>
            <input
              type="text"
              className="form-control pill-input"
              value={adminId}
              onChange={(e) => setAdminId(e.target.value)}
              placeholder="Enter Admin ID"
              required
            />
          </div>

          {/* Password */}
          <div className="mb-3">
            <label className="form-label fw-medium">Password</label>
            <input
              type="password"
              className="form-control pill-input"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              placeholder="Enter password"
              required
            />
          </div>

          {/* Login Button */}
          <div className="d-grid mb-3">
            <button type="submit" className="btn btn-dark pill-input">
              Login
            </button>
          </div>

          {/* Back to Dashboard */}
          <div className="text-center">
            <Link className="link-blue" to="/">
              ⬅ Back to Dashboard
            </Link>
          </div>
        </form>
      </div>
    </PageSplit>
  );
}
