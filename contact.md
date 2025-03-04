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


# Register Your Interest

<div class="content">
<form id="interestForm">
  
  <label for="name">Full Name:</label>
  <input type="text" id="name" name="name" required><br><br>

  <label for="email">Email Address:</label>
  <input type="email" id="email" name="email" required><br><br>

  <label for="interest">Select Your Interest Area:</label> <br>
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
<style>
  /* Styling for the form */
  #interestForm {
      background-color: #f5f5f5; /* Light grey background */
      padding: 20px;
      border-radius: 8px;
      width: 50%;
      margin: auto;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
  }

  /* Style for input fields */
  input[type="text"], input[type="email"] {
      width: 100%;
      padding: 8px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
  }

  /* Style for the submit button */
  button {
      background-color: #1B2430; /* Dark blue */
      color: white;
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      width: 100%;
      font-size: 16px;
  }

  button:hover {
      background-color: #34495E;
  }
</style>

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