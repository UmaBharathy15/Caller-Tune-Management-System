import React, { useState } from "react";
import { Routes, Route, Navigate } from "react-router-dom";

// Main Dashboard
import Dashboard from "./MainDashboardComponents/Dashboard.jsx";
import YourCallerTune from "./MainDashboardComponents/YourCallerTune.jsx";
import SetCallerTunePage from "./MainDashboardComponents/SetCallerTunePage.jsx";

// Admin Dashboard
import AdminDashboard from "./AdminDashboardComponenet/DashboardComponent/AdminDashboard.jsx"; 
// ⬆ adjust this path to match where your main admin dashboard file is inside AdminDashboardComponent

// User Auth
import LoginMainPage from "./LoginComponents/UserLogin/LoginMainPage.jsx";
import CreateAccountPage from "./LoginComponents/UserLogin/CreateAccountPage.jsx";
import ForgotPasswordPage from "./LoginComponents/UserLogin/ForgotPasswordPage.jsx";

// Admin Auth
import AdminLoginPage from "./LoginComponents/AdminLogin/LoginPage.jsx";

// Shared
import PageSplit from "./LoginComponents/PageSplit.jsx";

// Navbar
import NavigationComponent from "./MainDashboardComponents/NavigationComponent.jsx";

export default function App() {
  const [callerTune, setCallerTune] = useState(null);
  const [language, setLanguage] = useState("All Songs");
  const [isLoggedIn, setIsLoggedIn] = useState(false);
  const [isAdminLoggedIn, setIsAdminLoggedIn] = useState(false);

  return (
    <>
      <NavigationComponent
        onLanguageChange={setLanguage}
        callerTune={callerTune}
      />

      <div className="container mt-5 pt-4">
        <Routes>
          {/* User Dashboard */}
          <Route
            path="/"
            element={
              <Dashboard
                language={language}
                setCallerTune={setCallerTune}
                isLoggedIn={isLoggedIn}
                callerTune={callerTune}
              />
            }
          />

          <Route
            path="/set-caller-tune"
            element={
              <SetCallerTunePage
                language={language}
                setCallerTune={setCallerTune}
                isLoggedIn={isLoggedIn}
              />
            }
          />

          <Route
            path="/your-caller-tune"
            element={<YourCallerTune callerTune={callerTune} />}
          />

          {/* User Auth */}
          <Route
            path="/login"
            element={<LoginMainPage onLoginSuccess={() => setIsLoggedIn(true)} />}
          />
          <Route path="/create-account" element={<CreateAccountPage />} />
          <Route path="/forgot-password" element={<ForgotPasswordPage />} />

          {/* Admin Auth */}
          <Route
            path="/admin-login"
            element={<AdminLoginPage onAdminLoginSuccess={() => setIsAdminLoggedIn(true)} />}
          />
          <Route
            path="/admin-dashboard"
            element={
              isAdminLoggedIn ? (
                <AdminDashboard />
              ) : (
                <Navigate to="/admin-login" replace />
              )
            }
          />

          {/* Shared */}
          <Route path="/split" element={<PageSplit />} />

          {/* 404 */}
          <Route path="*" element={<Navigate to="/" replace />} />
        </Routes>
      </div>
    </>
  );
}
