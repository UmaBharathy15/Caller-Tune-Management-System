import React, { useState } from "react";
import "../Dashboard/UserDashboard.css";
import NavigationComponent from "../Navigation/NavigationComponent.jsx";
import Carousel from "../Carousel/Carousel.jsx";
import SongGrid from "../SongGrid/SongGrid.jsx";

export default function UserDashboard() {
  const [key, setKey] = useState(0);
  const [language, setLanguage] = useState("Hindi");

  const reloadDashboard = () => setKey((k) => k + 1);

  return (
    <>
      <NavigationComponent
        onBrandClick={reloadDashboard}
        onLanguageChange={setLanguage}
      />
      <main className="container-fluid p-0" key={key}>
        <div className="no-gap">
          <Carousel />
          <h6 className="text-muted fw-semibold mt-4 mb-2 px-3">{language}</h6>
          <div className="px-3 pb-4">
            <SongGrid language={language} />
          </div>
        </div>
      </main>
    </>
  );
}
