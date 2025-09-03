
// import React, { useState, useMemo } from "react";
// import { Link, useNavigate } from "react-router-dom";   // ✅ added useNavigate
// import PageSplit from "../PageSplit.jsx";
// import "./LoginPage.css";
// import loginBg from "../phone.png";

// function BrandOnlyNav() {
//   return (
//     <nav className="navbar navbar-custom fixed-top">
//       <div className="container-fluid h-100 d-flex align-items-center">
//         <Link to="/" className="brand-mark ps-2 ps-sm-3 text-decoration-none">
//           <span className="brand-dot">
//             <i className="bi bi-music-note-beamed" />
//           </span>
//           <span className="brand-text">VZ RingWave</span>
//         </Link>
//       </div>
//     </nav>
//   );
// }

// export default function LoginMainPage() {
//   const navigate = useNavigate();  // ✅ hook for redirect

//   const [phone, setPhone] = useState("");
//   const [password, setPassword] = useState("");
//   const [err, setErr] = useState("");

//   // ✅ Hardcoded credentials for now
//   const defaultPhone = "9999999999";
//   const defaultPassword = "1234";

//   const handlePhoneChange = (e) => {
//     const digitsOnly = e.target.value.replace(/\D/g, "").slice(0, 10);
//     setPhone(digitsOnly);
//     if (err) setErr("");
//   };

//   const isPhoneValid = useMemo(() => /^[6-9]\d{9}$/.test(phone), [phone]);
//   const isFormValid = isPhoneValid && password.trim().length > 0;

//   const leftOverlay = (
//     <>
//       <div />
//       <h1 className="display-5 fw-bold lh-tight left-headline">
//         Set the vibe before the call arrives.
//       </h1>
//       <div className="small opacity-75">Make every ring unforgettable.</div>
//     </>
//   );

//   const onSubmit = (e) => {
//     e.preventDefault();
//     if (!isPhoneValid) {
//       return setErr("Phone number must be 10 digits and start with 9, 8, 7, or 6.");
//     }
//     if (!password.trim()) {
//       return setErr("Please enter your password.");
//     }

//     // ✅ Check credentials
//     if (phone === defaultPhone && password === defaultPassword) {
//       setErr("");
//       navigate("/user-dashboard"); // redirect
//     } else {
//       setErr("Invalid phone number or password");
//     }
//   };

//   return (
//     <>
//       <BrandOnlyNav />
//       <div className="nav-spacer" />

//       <PageSplit leftOverlay={leftOverlay} bgImage={loginBg}>
//         <div className="login-page">
//           <div className="brand text-center mb-4">
//             <h1 className="welcome-text">
//               Welcome to <span className="brand-logo">VZ RingWave</span>
//             </h1>
//           </div>

//           <h2 className="h5 fw-semibold mb-2">
//             Enter your world of caller tunes.
//           </h2>

//           <form noValidate onSubmit={onSubmit}>
//             <div className="mb-3">
//               <label htmlFor="phone" className="form-label fw-medium">
//                 Phone number
//               </label>
//               <input
//                 type="tel"
//                 id="phone"
//                 className={`form-control form-control-lg pill-input ${
//                   !isPhoneValid && phone ? "is-invalid" : ""
//                 }`}
//                 placeholder="9876543210"
//                 inputMode="numeric"
//                 autoComplete="tel"
//                 maxLength={10}
//                 value={phone}
//                 onChange={handlePhoneChange}
//                 aria-invalid={!isPhoneValid}
//                 aria-describedby="phoneHelp"
//               />
//               <small id="phoneHelp" className="text-muted">
//                 Enter a 10-digit number starting with 9, 8, 7, or 6.
//               </small>
//             </div>

//             <div className="mb-3">
//               <label htmlFor="password" className="form-label fw-medium">
//                 Password
//               </label>
//               <input
//                 type="password"
//                 id="password"
//                 className="form-control form-control-lg pill-input"
//                 placeholder="Enter your password"
//                 value={password}
//                 onChange={(e) => setPassword(e.target.value)}
//                 autoComplete="current-password"
//               />
//             </div>

//             {err && <small className="text-danger d-block mb-2">{err}</small>}

//             <div className="d-grid mb-3">
//               <button
//                 type="submit"
//                 className="btn btn-dark btn-lg pill-input"
//                 disabled={!isFormValid}
//               >
//                 Login Now
//               </button>
//             </div>

//             <div className="text-center">
//               <Link className="link-blue" to="/forgot-password">
//                 Forgot password? Click here.
//               </Link>
//             </div>

//             <p className="text-center mt-2">
//               <Link className="link-blue" to="/create-account">
//                 Create a new account
//               </Link>
//             </p>
//           </form>
//         </div>
//       </PageSplit>
//     </>
//   );
// }
import React, { useState, useMemo } from "react";
import { Link, useNavigate } from "react-router-dom";
import PageSplit from "../PageSplit.jsx";
import "./LoginPage.css";
import loginBg from "../phone.png";

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

export default function LoginMainPage() {
  const navigate = useNavigate();

  const [phone, setPhone] = useState("");
  const [password, setPassword] = useState("");
  const [err, setErr] = useState("");

  const defaultPhone = "9999999999";
  const defaultPassword = "1234";

  const handlePhoneChange = (e) => {
    const digitsOnly = e.target.value.replace(/\D/g, "").slice(0, 10);
    setPhone(digitsOnly);
    if (err) setErr("");
  };

  const isPhoneValid = useMemo(() => /^[6-9]\d{9}$/.test(phone), [phone]);
  const isFormValid = isPhoneValid && password.trim().length > 0;

  const onSubmit = (e) => {
    e.preventDefault();
    if (!isPhoneValid) return setErr("Phone must start with 9, 8, 7, or 6 and be 10 digits.");
    if (!password.trim()) return setErr("Please enter your password.");

    if (phone === defaultPhone && password === defaultPassword) {
      setErr("");
      navigate("/user-dashboard"); // ✅ redirect to dashboard
    } else {
      setErr("Invalid phone number or password");
    }
  };

  const leftOverlay = (
    <>
      <div />
      <h1 className="display-5 fw-bold lh-tight left-headline">
        Set the vibe before the call arrives.
      </h1>
      <div className="small opacity-75">Make every ring unforgettable.</div>
    </>
  );

  return (
    <>
      <BrandOnlyNav />
      <div className="nav-spacer" />

      <PageSplit leftOverlay={leftOverlay} bgImage={loginBg}>
        <div className="login-page">
          <h2 className="h5 fw-semibold mb-2">Enter your world of caller tunes.</h2>
          <form noValidate onSubmit={onSubmit}>
            <div className="mb-3">
              <label className="form-label">Phone number</label>
              <input
                type="tel"
                className={`form-control form-control-lg ${!isPhoneValid && phone ? "is-invalid" : ""}`}
                placeholder="9876543210"
                value={phone}
                onChange={handlePhoneChange}
              />
            </div>

            <div className="mb-3">
              <label className="form-label">Password</label>
              <input
                type="password"
                className="form-control form-control-lg"
                placeholder="Enter password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
              />
            </div>

            {err && <small className="text-danger d-block mb-2">{err}</small>}

            <div className="d-grid mb-3">
              <button type="submit" className="btn btn-dark btn-lg" disabled={!isFormValid}>
                Login Now
              </button>
            </div>

            <div className="text-center">
              <Link to="/forgot-password">Forgot password?</Link>
            </div>
            <p className="text-center mt-2">
              <Link to="/create-account">Create a new account</Link>
            </p>
          </form>
        </div>
      </PageSplit>
    </>
  );
}
