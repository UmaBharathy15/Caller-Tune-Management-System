// src/LoginComponents/UserLogin/ForgotPasswordPage.jsx
import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
// ✅ FIXED import path (go up one folder)
import PageSplit from "../PageSplit.jsx";
import "./ForgotPasswordPage.css";
import forgotBg from "./forgot.png";

/* Brand-only navbar like Login page */
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

export default function ForgotPasswordPage() {
  const [step, setStep] = useState(1);
  const [phone, setPhone] = useState("");
  const [password, setPassword] = useState("");
  const [err, setErr] = useState("");
  const [success, setSuccess] = useState(false);
  const navigate = useNavigate();

  // handle phone input
  const handlePhoneChange = (e) => {
    const onlyDigits = e.target.value.replace(/\D/g, "").slice(0, 10);
    setPhone(onlyDigits);
    if (onlyDigits && !/^[6-9]/.test(onlyDigits)) {
      setErr("Phone must start with 6, 7, 8, or 9.");
    } else if (onlyDigits.length > 0 && onlyDigits.length < 10) {
      setErr("Phone must be exactly 10 digits.");
    } else {
      setErr("");
    }
  };

  const onContinue = (e) => {
    e.preventDefault();
    if (!PHONE_REGEX.test(phone)) {
      setErr("Enter a valid 10-digit phone starting with 6, 7, 8, or 9.");
      return;
    }
    setErr("");
    setStep(2);
  };

  const onUpdate = (e) => {
    e.preventDefault();
    if (!password.trim()) {
      setErr("Please enter a new password.");
      return;
    }
    setErr("");
    setSuccess(true);
    // simulate redirect to login after success
    setTimeout(() => navigate("/login"), 1500);
  };

  const leftOverlay = (
    <>
      <div />
      <h1 className="display-5 fw-bold lh-tight left-headline">Forgot Your Password?</h1>
      <div className="small opacity-75">
        <span aria-hidden="true">🔒</span> We’ve got your back.
      </div>
    </>
  );

  return (
    <>
      {/* Navbar */}
      <BrandOnlyNav />
      <div className="nav-spacer" />

      <PageSplit leftOverlay={leftOverlay} bgImage={forgotBg}>
        <>
          <h2 className="h4 fw-semibold mb-2">Forgot Your Password?</h2>
          <p className="text-muted mb-4">
            Enter the phone number you used when you signed up and we'll help you out.
          </p>

          {success && (
            <div className="alert alert-success" role="alert">
              ✅ Your password has been updated successfully! Redirecting to login…
            </div>
          )}

          <form noValidate onSubmit={step === 1 ? onContinue : onUpdate}>
            {step === 1 && (
              <div className="mb-3">
                <label htmlFor="fpPhone" className="form-label fw-medium">Phone number</label>
                <input
                  type="tel"
                  id="fpPhone"
                  className={`form-control form-control-lg pill-input ${
                    err && step === 1 ? "is-invalid" : ""
                  }`}
                  placeholder="Enter 10-digit number"
                  value={phone}
                  onChange={handlePhoneChange}
                  maxLength={10}
                  disabled={step === 2}
                />
                {err && step === 1 && (
                  <div className="invalid-feedback d-block">{err}</div>
                )}
              </div>
            )}

            {step === 2 && (
              <div className="mb-3">
                <label htmlFor="fpNewPass" className="form-label fw-medium">New password</label>
                <input
                  type="password"
                  id="fpNewPass"
                  className="form-control form-control-lg pill-input"
                  placeholder="Enter your new password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                />
              </div>
            )}

            <div className="d-grid">
              {step === 1 ? (
                <button type="submit" className="btn btn-dark btn-lg pill-input">Continue</button>
              ) : (
                <button type="submit" className="btn btn-update-password btn-lg pill-input">Update Password</button>
              )}
            </div>

            <div className="text-center mt-3">
              <Link className="link-primary text-decoration-underline" to="/login">
                Back to Login
              </Link>
            </div>
          </form>
        </>
      </PageSplit>
    </>
  );
}

