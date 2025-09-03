// src/LoginComponents/CreateAccountPage.jsx
import React, { useState } from "react";
import { Link } from "react-router-dom";
import PageSplit from "../PageSplit.jsx";
import "./CreateAccountPage.css";
import signupBg from "../phone.png";   // ✅ background image

/* ✅ Brand-only navbar reused from Login page */
function BrandOnlyNav() {
  return (
    <nav className="navbar navbar-custom fixed-top">
      <div className="container-fluid h-100 d-flex align-items-center">
        <Link to="/" className="brand-mark ps-2 ps-sm-3 text-decoration-none">
          <span className="brand-dot">
            <i className="bi bi-music-note-beamed" />
          </span>
          <span className="brand-text">VZ RingWave</span>
        </Link>
      </div>
    </nav>
  );
}

const PHONE_REGEX = /^[6-9]\d{9}$/;

export default function CreateAccountPage() {
  const [phone, setPhone] = useState("");
  const [password, setPassword] = useState("");
  const [phoneErr, setPhoneErr] = useState("");
  const [submitted, setSubmitted] = useState(false);

  const leftOverlay = (
    <>
      <div />
      <h1 className="display-5 fw-bold lh-tight left-headline">
        Join RingWave today.
      </h1>
      <div className="small opacity-75">
        <span aria-hidden="true">⭐</span> Set your caller tune identity.
      </div>
    </>
  );

  const handlePhoneChange = (e) => {
    const onlyDigits = e.target.value.replace(/\D/g, "").slice(0, 10);
    setPhone(onlyDigits);

    if (!onlyDigits) {
      setPhoneErr("");
      return;
    }
    if (!/^[6-9]/.test(onlyDigits)) {
      setPhoneErr("Phone must start with 6, 7, 8, or 9.");
    } else if (onlyDigits.length < 10) {
      setPhoneErr("Phone must be exactly 10 digits.");
    } else {
      setPhoneErr("");
    }
  };

  const handlePhoneKeyDown = (e) => {
    const allowed = ["Backspace", "Delete", "Tab", "ArrowLeft", "ArrowRight", "Home", "End"];
    if (allowed.includes(e.key) || e.ctrlKey || e.metaKey) return;
    if (!/^\d$/.test(e.key)) e.preventDefault();
  };

  const handlePhonePaste = (e) => {
    e.preventDefault();
    const digits = (e.clipboardData || window.clipboardData)
      .getData("text")
      .replace(/\D/g, "")
      .slice(0, 10);
    setPhone(digits);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    setSubmitted(true);

    if (!PHONE_REGEX.test(phone)) {
      setPhoneErr("Enter a valid 10-digit phone starting with 6, 7, 8, or 9.");
      return;
    }

    // TODO: call your signup API
    console.log("Sign Up ->", { phone, password });
  };

  const isPhoneInvalid = Boolean((submitted || phone) && phoneErr);

  return (
    <>
      {/* ✅ Brand-only nav on top */}
      <BrandOnlyNav />
      <div className="nav-spacer" /> {/* pushes content below fixed nav */}

      {/* ✅ Added bgImage (phone.png) */}
      <PageSplit leftOverlay={leftOverlay} bgImage={signupBg}>
        <div className="create-account-page">
          <h2 className="create-title h4 fw-semibold mb-2">Create your account</h2>

          <form noValidate className="create-form" onSubmit={handleSubmit}>
            {/* Phone */}
            <div className="mb-3">
              <label htmlFor="caPhone" className="form-label fw-medium">Phone number</label>
              <input
                type="tel"
                id="caPhone"
                className={`form-control form-control-lg pill-input ${isPhoneInvalid ? "is-invalid" : ""}`}
                placeholder="Enter 10-digit number"
                inputMode="numeric"
                autoComplete="tel"
                value={phone}
                onChange={handlePhoneChange}
                onKeyDown={handlePhoneKeyDown}
                onPaste={handlePhonePaste}
                aria-invalid={isPhoneInvalid}
                aria-describedby="caPhoneHelp"
                maxLength={10}
                required
              />
              <div id="caPhoneHelp" className={`form-text ${isPhoneInvalid ? "text-danger" : ""}`}>
                Must start with 6/7/8/9 and be exactly 10 digits.
              </div>
              {isPhoneInvalid && <div className="invalid-feedback d-block">{phoneErr}</div>}
            </div>

            {/* Password */}
            <div className="mb-3">
              <label htmlFor="caPassword" className="form-label fw-medium">Password</label>
              <input
                type="password"
                id="caPassword"
                className="form-control form-control-lg pill-input"
                placeholder="Create a password"
                autoComplete="new-password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
              />
            </div>

            <div className="d-grid mb-3">
              <button type="submit" className="btn btn-update-password btn-lg pill-input">
                Sign Up
              </button>
            </div>

            <div className="text-center">
              <Link className="link-secondary text-decoration-underline" to="/login">
                Already have an account? Login
              </Link>
            </div>
          </form>
        </div>
      </PageSplit>
    </>
  );
}
