
// import { useNavigate } from "react-router-dom";
// import React, { useState } from "react";
// import "./NavigationComponent.css";

// export default function NavigationComponent({ onBrandClick, onLanguageChange }) {
//   const navigate = useNavigate();
//   const [language, setLanguage] = useState(""); // ✅ empty by default

//   const handleLogout = () => navigate("/login");

//   const handleLanguageChange = (lang) => {
//     setLanguage(lang);
//     onLanguageChange(lang);
//   };

//   return (
//     <nav className="navbar navbar-expand-lg navbar-dark bg-dark px-3">
//       <a
//         className="navbar-brand fw-bold text-warning"
//         onClick={onBrandClick}
//         style={{ cursor: "pointer" }}
//       >
//         🎵 VZ RingWave
//       </a>

//       <button
//         className="navbar-toggler"
//         type="button"
//         data-bs-toggle="collapse"
//         data-bs-target="#navbarNav"
//       >
//         <span className="navbar-toggler-icon"></span>
//       </button>

//       <div className="collapse navbar-collapse" id="navbarNav">
//         <ul className="navbar-nav ms-auto align-items-center">
//           {/* Music Language Dropdown */}
//           <li className="nav-item dropdown me-3">
//             <a
//               className="btn btn-light dropdown-toggle"
//               href="#"
//               role="button"
//               data-bs-toggle="dropdown"
//             >
//               {language || "Music Language"} {/* ✅ label until user picks */}
//             </a>
//             <ul className="dropdown-menu">
//               {["Hindi", "English", "Tamil", "Telugu"].map((lang) => (
//                 <li key={lang}>
//                   <button
//                     className="dropdown-item"
//                     onClick={() => handleLanguageChange(lang)}
//                   >
//                     {lang}
//                   </button>
//                 </li>
//               ))}
//             </ul>
//           </li>

//           {/* User Icon → Logout */}
//           <li className="nav-item dropdown">
//             <a
//               className="nav-link dropdown-toggle"
//               href="#"
//               role="button"
//               data-bs-toggle="dropdown"
//             >
//               <i className="bi bi-person-circle fs-4"></i>
//             </a>
//             <ul className="dropdown-menu dropdown-menu-end">
//               <li>
//                 <button className="dropdown-item text-danger" onClick={handleLogout}>
//                   <i className="bi bi-box-arrow-right me-2"></i> Logout
//                 </button>
//               </li>
//             </ul>
//           </li>
//         </ul>
//       </div>
//     </nav>
//   );
// }
// import React, { useState } from "react";
// import { useNavigate } from "react-router-dom";
// import "./NavigationComponent.css";

// export default function NavigationComponent({ onBrandClick, onLanguageChange }) {
//   const navigate = useNavigate();
//   const [language, setLanguage] = useState(""); // empty by default → mix of songs

//   const handleLogout = () => {
//     navigate("/login"); // redirect to login
//   };

//   const handleLanguageChange = (lang) => {
//     setLanguage(lang);
//     onLanguageChange(lang);
//   };

//   return (
//     <nav className="navbar navbar-expand-lg navbar-dark bg-dark px-3">
//       {/* ✅ Brand in red */}
//       <a
//         className="navbar-brand fw-bold"
//         onClick={onBrandClick}
//         style={{ cursor: "pointer", color: "red" }} // 🎵 VZ RingWave in red
//       >
//         🎵 VZ RingWave
//       </a>

//       {/* Toggle for mobile */}
//       <button
//         className="navbar-toggler"
//         type="button"
//         data-bs-toggle="collapse"
//         data-bs-target="#navbarNav"
//       >
//         <span className="navbar-toggler-icon"></span>
//       </button>

//       {/* Navbar menu */}
//       <div className="collapse navbar-collapse" id="navbarNav">
//         <ul className="navbar-nav ms-auto align-items-center">
//           {/* Music Language Dropdown */}
//           <li className="nav-item dropdown me-3">
//             <a
//               className="btn btn-light dropdown-toggle"
//               href="#"
//               role="button"
//               data-bs-toggle="dropdown"
//             >
//               {language || "Music Language"} {/* label until selected */}
//             </a>
//             <ul className="dropdown-menu">
//               {["Hindi", "English", "Tamil", "Telugu"].map((lang) => (
//                 <li key={lang}>
//                   <button
//                     className="dropdown-item"
//                     onClick={() => handleLanguageChange(lang)}
//                   >
//                     {lang}
//                   </button>
//                 </li>
//               ))}
//             </ul>
//           </li>

//           {/* User Icon → Logout */}
//           <li className="nav-item dropdown">
//             <a
//               className="nav-link dropdown-toggle"
//               href="#"
//               role="button"
//               data-bs-toggle="dropdown"
//             >
//               <i className="bi bi-person-circle fs-4"></i>
//             </a>
//             <ul className="dropdown-menu dropdown-menu-end">
//               <li>
//                 <button className="dropdown-item text-danger" onClick={handleLogout}>
//                   <i className="bi bi-box-arrow-right me-2"></i> Logout
//                 </button>
//               </li>
//             </ul>
//           </li>
//         </ul>
//       </div>
//     </nav>
//   );
// }
// import React, { useState } from "react";
// import { useNavigate } from "react-router-dom";
// import "./NavigationComponent.css";

// export default function NavigationComponent({ onBrandClick, onLanguageChange }) {
//   const navigate = useNavigate();
//   const [language, setLanguage] = useState(""); // empty by default → mix of songs

//   const handleLogout = () => {
//     navigate("/login"); // redirect to login
//   };

//   const handleLanguageChange = (lang) => {
//     setLanguage(lang);
//     onLanguageChange(lang);
//   };

//   return (
//     <nav className="navbar navbar-expand-lg navbar-dark bg-dark px-3">
//       {/* ✅ Brand with red music symbol + red text */}
//       <a
//         className="navbar-brand fw-bold"
//         onClick={onBrandClick}
//         style={{ cursor: "pointer", color: "red" }} // red color for both icon + text
//       >
//         <i className="bi bi-music-note-beamed me-1"></i> VZ RingWave
//       </a>

//       {/* Toggle for mobile */}
//       <button
//         className="navbar-toggler"
//         type="button"
//         data-bs-toggle="collapse"
//         data-bs-target="#navbarNav"
//       >
//         <span className="navbar-toggler-icon"></span>
//       </button>

//       {/* Navbar menu */}
//       <div className="collapse navbar-collapse" id="navbarNav">
//         <ul className="navbar-nav ms-auto align-items-center">
//           {/* Music Language Dropdown */}
//           <li className="nav-item dropdown me-3">
//             <a
//               className="btn btn-light dropdown-toggle"
//               href="#"
//               role="button"
//               data-bs-toggle="dropdown"
//             >
//               {language || "Music Language"} {/* label until selected */}
//             </a>
//             <ul className="dropdown-menu">
//               {["Hindi", "English", "Tamil", "Telugu"].map((lang) => (
//                 <li key={lang}>
//                   <button
//                     className="dropdown-item"
//                     onClick={() => handleLanguageChange(lang)}
//                   >
//                     {lang}
//                   </button>
//                 </li>
//               ))}
//             </ul>
//           </li>

//           {/* User Icon → Logout */}
//           <li className="nav-item dropdown">
//             <a
//               className="nav-link dropdown-toggle"
//               href="#"
//               role="button"
//               data-bs-toggle="dropdown"
//             >
//               <i className="bi bi-person-circle fs-4"></i>
//             </a>
//             <ul className="dropdown-menu dropdown-menu-end">
//               <li>
//                 <button className="dropdown-item text-danger" onClick={handleLogout}>
//                   <i className="bi bi-box-arrow-right me-2"></i> Logout
//                 </button>
//               </li>
//             </ul>
//           </li>
//         </ul>
//       </div>
//     </nav>
//   );
// }
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import "./NavigationComponent.css";

export default function NavigationComponent({ onBrandClick, onLanguageChange }) {
  const navigate = useNavigate();
  const [language, setLanguage] = useState(""); // empty by default → mix

  const handleLogout = () => navigate("/login");

  const handleLanguageChange = (lang) => {
    setLanguage(lang);
    onLanguageChange(lang);
  };

  return (
    <nav className="navbar navbar-expand-lg navbar-dark bg-dark px-3">
      {/* ✅ Brand with circle music icon */}
      <a
        className="navbar-brand fw-bold d-flex align-items-center"
        onClick={onBrandClick}
        style={{ cursor: "pointer", color: "red" }}
      >
        <span
          className="d-inline-flex align-items-center justify-content-center rounded-circle me-2"
          style={{
            width: "32px",
            height: "32px",
            backgroundColor: "white",
            color: "red",
          }}
        >
          <i className="bi bi-music-note-beamed"></i>
        </span>
        VZ RingWave
      </a>

      {/* Toggle for mobile */}
      <button
        className="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarNav"
      >
        <span className="navbar-toggler-icon"></span>
      </button>

      {/* Navbar menu */}
      <div className="collapse navbar-collapse" id="navbarNav">
        <ul className="navbar-nav ms-auto align-items-center">
          {/* Music Language Dropdown */}
          <li className="nav-item dropdown me-3">
            <a
              className="btn btn-light dropdown-toggle"
              href="#"
              role="button"
              data-bs-toggle="dropdown"
            >
              {language || "Music Language"}
            </a>
            <ul className="dropdown-menu">
              {["Hindi", "English", "Tamil", "Telugu"].map((lang) => (
                <li key={lang}>
                  <button
                    className="dropdown-item"
                    onClick={() => handleLanguageChange(lang)}
                  >
                    {lang}
                  </button>
                </li>
              ))}
            </ul>
          </li>

          {/* User Icon → Logout */}
          <li className="nav-item dropdown">
            <a
              className="nav-link dropdown-toggle"
              href="#"
              role="button"
              data-bs-toggle="dropdown"
            >
              <i className="bi bi-person-circle fs-4"></i>
            </a>
            <ul className="dropdown-menu dropdown-menu-end">
              <li>
                <button className="dropdown-item text-danger" onClick={handleLogout}>
                  <i className="bi bi-box-arrow-right me-2"></i> Logout
                </button>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  );
}
