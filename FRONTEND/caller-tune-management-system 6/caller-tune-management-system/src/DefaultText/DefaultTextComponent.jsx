import React from "react";
import "./DefaultTextComponent.css";

export default function DefaultTextComponent() {
  return (
    <section className="default-text-wrap border-top pt-4 pb-5">
      <div className="container-fluid">
        <div className="row g-4 row-cols-1 row-cols-sm-2 row-cols-lg-3 row-cols-xxl-6">

          {/* Top Artists */}
          <div className="col">
            <h6 className="section-title">TOP ARTISTS</h6>
            <ul className="linklist">
              {[
                "Neha Kakkar","Arijit Singh","Badshah","Justin Bieber",
                "Himesh Reshammiya","Lata Mangeshkar","Diljit Dosanjh",
                "Ed Sheeran","Shreya Ghoshal","Sanam Puri","Armaan Malik"
              ].map(i => <li key={i}><a href="#!">{i}</a></li>)}
            </ul>
          </div>

          {/* Top Actors + Browse */}
          <div className="col">
            <h6 className="section-title">TOP ACTORS</h6>
            <ul className="linklist mb-3">
              {["Salman Khan","Allu Arjun","Sunny Leone","Amitabh Bachchan","Varun Dhawan"]
                .map(i => <li key={i}><a href="#!">{i}</a></li>)}
            </ul>
            <h6 className="section-title mt-3">BROWSE</h6>
            <ul className="linklist">
              {[
                "New Releases","Featured Playlists","Weekly Top Songs",
                "Top Artists","Top Charts","Top Radios"
              ].map(i => <li key={i}><a href="#!">{i}</a></li>)}
            </ul>
          </div>

          {/* Devotional Songs */}
          <div className="col">
            <h6 className="section-title">DEVOTIONAL SONGS</h6>
            <ul className="linklist">
              {[
                "Krishna Bhajan","Mahamrityunjaya Mantra","Deva Shree Ganesha",
                "Hanuman Chalisa","Gayatri Mantra","Mata Ke Bhajan",
                "Durga Chalisa","Maiya Yashoda","Bhakti Geet"
              ].map(i => <li key={i}><a href="#!">{i}</a></li>)}
            </ul>
          </div>

          {/* Language */}
          <div className="col">
            <h6 className="section-title">LANGUAGE</h6>
            <ul className="linklist">
              {[
                "Hindi Songs","Punjabi Songs","Bhojpuri Songs","Tamil Songs",
                "Telugu Songs","Kannada Songs","Gujarati Songs","Marathi Songs",
                "Odia Songs","Rajasthani Songs","Haryanvi Songs","Assamese Songs",
                "Malayalam Songs","Bengali Songs"
              ].map(i => <li key={i}><a href="#!">{i}</a></li>)}
            </ul>
          </div>

          {/* Artist Originals */}
          <div className="col">
            <h6 className="section-title">ARTIST ORIGINALS</h6>
            <ul className="linklist">
              {[
                "Zaeden - Dooriyan","Raghav - Sufi","SIXK - Dansa",
                "Siri - My Jam",'Lost Stories, "Mai Ni Meriye"'
              ].map(i => <li key={i}><a href="#!">{i}</a></li>)}
            </ul>
          </div>

          {/* Company */}
          <div className="col">
            <h6 className="section-title">COMPANY</h6>
            <ul className="linklist">
              {[
                "About Us","Culture","Blog","Jobs","Press","Advertise",
                "Terms & Privacy","Help & Support","Grievances",
                "JioSaavn Artist","Insights","JioSaavn YourCast"
              ].map(i => <li key={i}><a href="#!">{i}</a></li>)}
            </ul>
          </div>

        </div>
      </div>
    </section>
  );
}
