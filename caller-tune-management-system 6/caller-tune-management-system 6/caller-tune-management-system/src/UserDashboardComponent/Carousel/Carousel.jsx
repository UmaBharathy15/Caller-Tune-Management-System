import React from "react";
import "./Carousel.css";
import slide1 from "../../MainDashboardComponents/slide1.jpeg";
import slide2 from "../../MainDashboardComponents/slide2.jpeg";
import slide3 from "../../MainDashboardComponents/slide3.jpeg";
import slide4 from "../../MainDashboardComponents/slide4.jpeg";

export default function Carousel() {
  return (
    <div
      id="carouselExampleIndicators"
      className="carousel slide"
      data-bs-ride="carousel"
    >
      <div className="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" className="active"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"></button>
      </div>

      <div className="carousel-inner">
        <div className="carousel-item active">
          <img src={slide1} className="d-block w-100" alt="Slide 1" />
        </div>
        <div className="carousel-item">
          <img src={slide2} className="d-block w-100" alt="Slide 2" />
        </div>
        <div className="carousel-item">
          <img src={slide3} className="d-block w-100" alt="Slide 3" />
        </div>
        <div className="carousel-item">
          <img src={slide4} className="d-block w-100" alt="Slide 4" />
        </div>
      </div>

      <button
        className="carousel-control-prev"
        type="button"
        data-bs-target="#carouselExampleIndicators"
        data-bs-slide="prev"
      >
        <span className="carousel-control-prev-icon"></span>
      </button>
      <button
        className="carousel-control-next"
        type="button"
        data-bs-target="#carouselExampleIndicators"
        data-bs-slide="next"
      >
        <span className="carousel-control-next-icon"></span>
      </button>
    </div>
  );
}
