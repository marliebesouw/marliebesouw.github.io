---
layout: default
title: Contact
---

# Contact

<div class="content">

For questions regarding sign-up and payment: <br>
    <a href="mailto:judith.vanwerven-nobel@radboudumc.nl" target="_blank">
    <i class="fa-solid fa-envelope"></i> 
    </a>
Judith van Werven-Nobel (Radboudumc Health Academy) <br>
<br>
For other questions: <br>
    <a href="mailto:marlie.besouw@radboudumc.nl" target="_blank">
    <i class="fa-solid fa-envelope"></i> 
    </a>
Marlie Besouw <br>

<br>
</div>

<div class="content">
# Register Your Interest

<form id="interestForm">
  
  <label for="name">Full Name:</label>
  <input type="text" id="name" name="name" required><br><br>

  <label for="email">Email Address:</label>
  <input type="email" id="email" name="email" required><br><br>

  <label for="interest">Select Your Interest Area:</label>
  <input type="radio" id="radiology" name="interest" value="Radiology" required>
  <label for="radiology">Radiology</label><br>

  <input type="radio" id="radiotherapy" name="interest" value="Radiotherapy">
  <label for="radiotherapy">Radiotherapy</label><br>

  <input type="radio" id="cardiology" name="interest" value="Cardiology">
  <label for="cardiology">Cardiology</label><br>

  <input type="radio" id="pathology" name="interest" value="Pathology">
  <label for="pathology">Pathology</label><br><br>

  <label>
    <input type="checkbox" id="updates" name="updates" required>
    I want to receive updates and information regarding the ICAI course: AI for Healthcare
  </label><br><br>

  <button type="submit">Submit</button>

</form>

<p id="responseMessage" style="display: none;"></p>

<script>
document.getElementById("interestForm").addEventListener("submit", function(event){
    event.preventDefault(); // Prevent form from submitting normally

    var formData = new FormData(this);
    fetch("https://script.google.com/macros/s/AKfycbxrictys5kyh8TBDn3zqqSVU6G07PYJL9RQYXUTAWknX5JMfBigJmKurx_tZsHLLiLO/exec", {
        method: "POST",
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        document.getElementById("interestForm").style.display = "none"; // Hide the form
        document.getElementById("responseMessage").style.display = "block";
        document.getElementById("responseMessage").innerHTML = "Thank you! Your response has been recorded.";
    })
    .catch(error => console.error("Error:", error));
});
</script>


</div>