import React, { useState } from "react";
import "./Dashboard.css";
import NavigationComponent from "./NavigationComponent.jsx";
import SlideImageComponent from "./SlideImageComponent.jsx";
import SongGrid from "./SongComponent/SongGrid.jsx";

export default function Dashboard() {
  const [key, setKey] = useState(0);
  const [language, setLanguage] = useState("All Songs"); // ✅ new state

  // Reset the dashboard when logo is clicked
  const reloadDashboard = () => setKey((k) => k + 1);

  return (
    <>
      {/* pass reload + language setter */}
      <NavigationComponent
        onBrandClick={reloadDashboard}
        onLanguageChange={setLanguage}
      />

      <main className="container-fluid p-0" key={key}>
        <div className="no-gap">
          {/* Hero carousel */}
          <SlideImageComponent />

          {/* Songs grid */}
          <h6 className="text-muted fw-semibold mt-4 mb-2 px-3">
            {language}
          </h6>
          <div className="px-3 pb-4">
            {/* ✅ pass language to SongGrid */}
            <SongGrid language={language} />
          </div>
        </div>
      </main>
    </>
  );
}
