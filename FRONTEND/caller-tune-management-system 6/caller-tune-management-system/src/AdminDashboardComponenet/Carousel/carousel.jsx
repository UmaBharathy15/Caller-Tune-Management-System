
// src/Carousel/Carousel.jsx
import React, { useId } from "react";
import "./Carousel.css";

// Import local images correctly from /src/assets/
import slide1 from "./image2.jpeg";
import slide2 from "./image2.jpeg";
import slide3 from "./image2.jpeg";
import slide4 from "./image2.jpeg";


export default function Carousel({ images, intervalMs = 3000 }) {
  const slides = images?.length ? images : [slide1, slide2, slide3, slide4];

  // Unique ID so multiple carousels don’t conflict
  const rid = useId().replace(/[:]/g, "");
  const carouselId = `carousel-${rid}`;

  return (
    <div
      id={carouselId}
      className="carousel slide"
      data-bs-ride="carousel"
      data-bs-interval={intervalMs}
      data-bs-pause="hover"
    >
      {/* Indicators */}
      <div className="carousel-indicators">
        {slides.map((_, i) => (
          <button
            key={i}
            type="button"
            data-bs-target={`#${carouselId}`}
            data-bs-slide-to={i}
            className={i === 0 ? "active" : ""}
            aria-current={i === 0 ? "true" : undefined}
            aria-label={`Slide ${i + 1}`}
          />
        ))}
      </div>

      {/* Slides */}
      <div className="carousel-inner">
        {slides.map((src, i) => (
          <div
            key={i}
            className={`carousel-item ${i === 0 ? "active" : ""}`}
          >
            <img
              src={src}
              className="d-block w-100 carousel-image"
              alt={`Slide ${i + 1}`}
            />
          </div>
        ))}
      </div>

      {/* Controls */}
      <button
        className="carousel-control-prev"
        type="button"
        data-bs-target={`#${carouselId}`}
        data-bs-slide="prev"
      >
        <span className="carousel-control-prev-icon" aria-hidden="true"></span>
        <span className="visually-hidden">Previous</span>
      </button>

      <button
        className="carousel-control-next"
        type="button"
        data-bs-target={`#${carouselId}`}
        data-bs-slide="next"
      >
        <span className="carousel-control-next-icon" aria-hidden="true"></span>
        <span className="visually-hidden">Next</span>
      </button>
    </div>
  );
}
