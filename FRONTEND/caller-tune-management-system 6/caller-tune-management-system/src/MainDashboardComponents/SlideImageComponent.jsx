import React, { useId } from "react";
import "./SlideImageComponent.css";

// Import your local images (same folder as this file)
import slide1 from "./slide1.jpeg";
import slide2 from "./slide2.jpeg";
import slide3 from "./slide3.jpeg";
import slide4 from "./slide4.jpeg";

/**
 * SlideImageComponent
 * ✅ Implemented using Bootstrap 5 Carousel
 * - Auto plays, pauses on hover
 * - Uses your saved images
 * - Left/Right arrows + indicators
 */
export default function SlideImageComponent({
  images,
  intervalMs = 2000,       // auto-slide speed (ms)
  showIndicators = true,   // show dots if true
}) {
  // Prefer images passed as prop, else default local slides
  const slides = images?.length ? images : [slide1, slide2, slide3, slide4];

  // Unique ID so multiple carousels don’t conflict
  const rid = useId().replace(/[:]/g, "");
  const carouselId = `carousel-${rid}`;

  return (
    <>
      {/* ------------------- BOOTSTRAP CAROUSEL START ------------------- */}
      <div
        id={carouselId}
        className="carousel slide"
        data-bs-ride="carousel"
        data-bs-interval={intervalMs}
        data-bs-pause="hover"
      >
        {/* Dots (indicators) */}
        {showIndicators && (
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
        )}

        {/* Image slides */}
        <div className="carousel-inner rounded-3 shadow-sm">
          {slides.map((src, i) => (
            <div
              key={i}
              className={`carousel-item ${i === 0 ? "active" : ""}`}
            >
              <img
                src={src}
                className="d-block w-100 slider-image"
                alt={`Slide ${i + 1}`}
                draggable={false}
              />
            </div>
          ))}
        </div>

        {/* Prev control */}
        <button
          className="carousel-control-prev"
          type="button"
          data-bs-target={`#${carouselId}`}
          data-bs-slide="prev"
        >
          <span className="carousel-control-prev-icon" aria-hidden="true"></span>
          <span className="visually-hidden">Previous</span>
        </button>

        {/* Next control */}
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
      {/* ------------------- BOOTSTRAP CAROUSEL END --------------------- */}
    </>
  );
}
