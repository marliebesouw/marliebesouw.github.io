---
layout: default
title: Program
---

<style>
  /* Timeline spacing tweaks */
  .program { margin-bottom: 0 !important; }
  .program .program-item { margin-bottom: 12px; }
  .program .program-item:last-child { margin-bottom: 0; }

  /* Reference card for speakers at the end */
  .speakers-card {
    background: #f9fafb;
    border: 1px solid #e5e7eb;
    border-radius: 10px;
    padding: 16px;
    margin-top: 16px;
  }
  .speakers-card h3 {
    margin: 0 0 8px 0;
    font-size: 1.25rem;
    line-height: 1.3;
  }
  .speakers-list { line-height: 1.6; }
  .speakers-caption {
    font-size: 0.92rem;
    color: #555;
    margin-top: 8px;
  }

  /* Thumbnail grid inside the card */
  .speakers-grid {
    display: grid;
    grid-template-columns: repeat(4, minmax(0, 1fr));
    gap: 12px;
    margin-top: 10px;
  }
  @media (max-width: 900px) {
    .speakers-grid { grid-template-columns: repeat(2, minmax(0, 1fr)); }
  }
  .speakers-grid a { text-decoration: none; color: inherit; text-align: center; display: block; }
  .speakers-grid img { width: 100%; height: auto; border-radius: 6px; }
</style>

<div style="display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap;">
  <h1 style="margin: 0;"><strong>Program Overview</strong></h1>
  <a href="https://registratie.radboudumc.nl/166356/subscribe" target="_blank" style="
    background-color:rgb(255, 130, 3);
    color: rgb(27, 36, 48);
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 6px;
    font-size: 24px;
    font-weight: bold;
    margin-top: 5px;
  ">
    Register now
  </a>
</div><br>

<div class="content">
Below you can find the time schedule of the congress day on September 19. <br>
More information regarding the speakers can be found <a href="{{ site.url }}/speakers">here</a>. <br><br>
If you do not have a preference for a specific field (cardiology, pathology, radiology, or radiotherapy), you can indicate this during registration and we will assign you to one of the insight sessions. These sessions are not only focused on the specific AI tools presented, but also cover broader topics such as workflow integration, user experience, and common implementation challenges across specialties.
</div>

<h1 style="margin-top: 3rem; border-bottom: 2px solid #eee; padding-bottom: 0.5rem;"> </h1>

<div class="program">

  <!-- Registration -->
  <div class="program-item">
    <div class="program-time">09.00-09.30</div>
    <div class="program-text"><strong>Registration and welcome coffee or tea</strong></div>
  </div>

  <!-- Chair welcome -->
  <div class="program-item">
    <div class="program-time">09.30-09.45</div>
    <div class="program-text"><strong>Welcome by chairperson</strong></div>
  </div>

  <!-- Opening keynote -->
  <div class="program-item">
    <div class="program-time">09.45-10.30</div>
    <div class="program-text">
      <strong>Opening keynote:</strong><br>
      <strong><em>The opportunities and challenges of AI in healthcare</em></strong><br>
      Speaker: <a href="{{ site.url }}/speakers#colin-jacobs" class="speaker-link">Colin Jacobs</a>
    </div>
    <div class="speaker-thumb-grid">
      <a href="{{ site.url }}/speakers#colin-jacobs">
        <img src="{{ site.url }}/assets/img/Colin_Jacobs.jpg" class="speaker-thumb" alt="Colin Jacobs">
      </a>
    </div>
  </div>

  <!-- Plenary -->
  <div class="program-item">
    <div class="program-time">10.30-11.00</div>
    <div class="program-text">
      <strong>Plenary session:</strong><br>
      <strong><em>Considerations for selecting an AI system</em></strong><br>
      Speaker: <a href="{{ site.url }}/speakers#kicky-van-leeuwen" class="speaker-link">Kicky van Leeuwen</a>
    </div>
    <div class="speaker-thumb-grid">
      <a href="{{ site.url }}/speakers#kicky-van-leeuwen">
        <img src="{{ site.url }}/assets/img/Kicky_van_Leeuwen.jpg" class="speaker-thumb" alt="Kicky van Leeuwen">
      </a>
    </div>
  </div>

  <!-- Morning parallel -->
  <div class="program-item">
    <div class="program-time">11.00-12.30</div>
    <div class="program-text">
      <strong>Groups A1 + A2:</strong> <em>Hands-on workshop: selecting an AI system</em><br>
      Speaker: <a href="{{ site.url }}/speakers#kicky-van-leeuwen" class="speaker-link">Kicky van Leeuwen</a><br><br>
      <strong>Groups B1 + B2, parallel:</strong> <em>Insight session: AI in clinical practice</em> (Cardiology, Pathology, Radiology, Radiotherapy)
    </div>
    <div class="speaker-thumb-grid">
      <a href="{{ site.url }}/speakers#kicky-van-leeuwen">
        <img src="{{ site.url }}/assets/img/Kicky_van_Leeuwen.jpg" class="speaker-thumb" alt="Kicky van Leeuwen">
      </a>
    </div>
  </div>

  <!-- Lunch -->
  <div class="program-item">
    <div class="program-time">12.30-13.30</div>
    <div class="program-text"><strong>Lunch and networking</strong></div>
  </div>

  <!-- Afternoon parallel (B first) -->
  <div class="program-item">
    <div class="program-time">13.30-15.00</div>
    <div class="program-text">
      <strong>Groups B1 + B2:</strong> <em>Hands-on workshop: selecting an AI system</em><br>
      Speaker: <a href="{{ site.url }}/speakers#kicky-van-leeuwen" class="speaker-link">Kicky van Leeuwen</a><br><br>
      <strong>Groups A1 + A2, parallel:</strong> <em>Insight session: AI in clinical practice</em> (Cardiology, Pathology, Radiology, Radiotherapy)
    </div>
    <div class="speaker-thumb-grid">
      <a href="{{ site.url }}/speakers#kicky-van-leeuwen">
        <img src="{{ site.url }}/assets/img/Kicky_van_Leeuwen.jpg" class="speaker-thumb" alt="Kicky van Leeuwen">
      </a>
    </div>
  </div>

  <!-- Coffee -->
  <div class="program-item">
    <div class="program-time">15.00-15.30</div>
    <div class="program-text"><strong>Coffee break</strong></div>
  </div>

  <!-- Plenary 3 -->
  <div class="program-item">
    <div class="program-time">15.30-16.00</div>
    <div class="program-text">
      <strong>Plenary session:</strong><br>
      <strong><em>Bringing the large language model into clinical practice</em></strong><br>
      Speakers:<br>
      <a href="{{ site.url }}/speakers#marja-de-waal" class="speaker-link">Marja de Waal</a> and 
      <a href="{{ site.url }}/speakers#martijn-bauer" class="speaker-link">Martijn Bauer</a>
    </div>
    <div class="speaker-thumb-grid">
      <a href="{{ site.url }}/speakers#marja-de-waal">
        <img src="{{ site.url }}/assets/img/Marja_de_Waal.jpg" class="speaker-thumb" alt="Marja de Waal">
      </a>
      <a href="{{ site.url }}/speakers#martijn-bauer">
        <img src="{{ site.url }}/assets/img/Martijn_Bauer1.jpg" class="speaker-thumb" alt="Martijn Bauer">
      </a>
    </div>
  </div>

  <!-- Plenary 4 -->
  <div class="program-item">
    <div class="program-time">16.00-17.00</div>
    <div class="program-text">
      <strong>Plenary session:</strong><br>
      <strong><em>What is the future of AI in healthcare?</em></strong><br>
      Speakers:<br>
      <a href="{{ site.url }}/speakers#bram-van-ginneken" class="speaker-link">Bram van Ginneken</a> and 
      <a href="{{ site.url }}/speakers#robert-breas" class="speaker-link">Robert Breas</a>
    </div>
    <div class="speaker-thumb-grid">
      <a href="{{ site.url }}/speakers#bram-van-ginneken">
        <img src="{{ site.url }}/assets/img/Bram_van_Ginneken.jpg" class="speaker-thumb" alt="Bram van Ginneken">
      </a>
      <a href="{{ site.url }}/speakers#robert-breas">
        <img src="{{ site.url }}/assets/img/Robert_Breas.jpg" class="speaker-thumb" alt="Robert Breas">
      </a>
    </div>
  </div>

  <!-- Networking drinks -->
  <div class="program-item">
    <div class="program-time">17.00-18.00</div>
    <div class="program-text"><strong>Networking drinks</strong></div>
  </div>
</div>

<!-- Reference card: Insight session speakers -->
<div class="speakers-card">
  <h3><strong>Insight session speakers</strong></h3>

  <div class="speakers-list">
    &nbsp;&nbsp;&nbsp;&nbsp; <strong>Cardiology:</strong>
    <a href="{{ site.url }}/speakers#niels-van-royen" class="speaker-link">Niels van Royen</a> and 
    <a href="{{ site.url }}/speakers#alexander-vanpeteghem" class="speaker-link">Alexander Vanpeteghem</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp; <strong>Pathology:</strong>
    <a href="{{ site.url }}/speakers#natalie-ter-hoeve" class="speaker-link">Natalie ter Hoeve</a> and 
    <a href="{{ site.url }}/speakers#mateusz-tylicki" class="speaker-link">Mateusz Tylicki</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp; <strong>Radiology:</strong>
    <a href="{{ site.url }}/speakers#steven-schalekamp" class="speaker-link">Steven Schalekamp</a> and  
    <a href="{{ site.url }}/speakers#daniel-drieling" class="speaker-link">Daniel Drieling</a><br>
    &nbsp;&nbsp;&nbsp;&nbsp; <strong>Radiotherapy:</strong>
    <a href="{{ site.url }}/speakers#hanneke-bluemink" class="speaker-link">Hanneke Bluemink</a> and 
    <a href="{{ site.url }}/speakers#dennie-fransen" class="speaker-link">Dennie Fransen</a>
  </div>

  <div class="speakers-grid">
    <a href="{{ site.url }}/speakers#niels-van-royen">
      <img src="{{ site.url }}/assets/img/Niels_van_Royen.jpg" alt="Niels van Royen">
    </a>
    <a href="{{ site.url }}/speakers#alexander-vanpeteghem">
      <img src="{{ site.url }}/assets/img/Alexander_Vanpeteghem.png" alt="Alexander Vanpeteghem">
    </a>
    <a href="{{ site.url }}/speakers#natalie-ter-hoeve">
      <img src="{{ site.url }}/assets/img/Natalie_ter_Hoeve.jpg" alt="Natalie ter Hoeve">
    </a>
    <a href="{{ site.url }}/speakers#mateusz-tylicki">
      <img src="{{ site.url }}/assets/img/Mateusz_Tylicki.png" alt="Mateusz Tylicki">
    </a>
    <a href="{{ site.url }}/speakers#steven-schalekamp">
      <img src="{{ site.url }}/assets/img/Steven_Schalekamp.jpg" alt="Steven Schalekamp">
    </a>
    <a href="{{ site.url }}/speakers#daniel-drieling">
      <img src="{{ site.url }}/assets/img/Daniel_Drieling.jpeg" alt="Daniel Drieling">
    </a>
    <a href="{{ site.url }}/speakers#hanneke-bluemink">
      <img src="{{ site.url }}/assets/img/Hanneke_Bluemink.jpg" alt="Hanneke Bluemink">
    </a>
    <a href="{{ site.url }}/speakers#dennie-fransen">
      <img src="{{ site.url }}/assets/img/Dennie_Fransen.jpg" alt="Dennie Fransen">
    </a>
  </div>

  <div class="speakers-caption">
    Speakers per domain, used in the insight sessions.
  </div>
</div>

<div class="content" style="margin-top: 16px;">
  *Participants are divided into smaller groups for the workshop and the insight sessions. <br>
  A1 and A2 attend the morning workshop and the afternoon insight session. <br>
  B1 and B2 attend the morning insight session and the afternoon workshop. <br><br>

  For the insight sessions, you choose one of the four focus areas during registration, namely Radiology, Radiotherapy, Cardiology, or Pathology. This choice determines which domain you join within your A or B group.

  <h2>Accreditation</h2>
  Accreditation is approved by NVVC, NVVP, NVvR, NVRO, and NVKF.
</div>
