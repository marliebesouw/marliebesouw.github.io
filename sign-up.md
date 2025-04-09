---
layout: default
title: Sign-up
---

# Sign-up
<div class="content">
    <p>Sign-ups are not open yet, but you can register your interest to stay informed. We will keep you updated and let you know as soon as registration becomes available.  If you have any questions in the meantime, feel free to reach out via the <a href="{{ site.baseurl }}/contact">contact form</a>.</p>
</div>

# Register Your Interest
<div class="content">
    <div id="formContainer">
        <form id="interestForm">
        
            <label for="name">Full Name*:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Email Address*:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label>Select your interest area*:</label> <br>
            <div class="radio-group">
                <input type="radio" id="radiology" name="interest" value="Radiology" required>
                <label for="radiology">Radiology</label><br>

                <input type="radio" id="radiotherapy" name="interest" value="Radiotherapy">
                <label for="radiotherapy">Radiotherapy</label><br>

                <input type="radio" id="cardiology" name="interest" value="Cardiology">
                <label for="cardiology">Cardiology</label><br>

                <input type="radio" id="pathology" name="interest" value="Pathology">
                <label for="pathology">Pathology</label>
            </div><br>

            <label>
                <input type="checkbox" id="updates" name="updates" required>
                I want to receive updates and information regarding the ICAI course: AI for Healthcare*
            </label><br><br>

            <button type="submit">Submit</button>

        </form>

        <p id="responseMessage" style="display: none;"></p>
    </div>
</div>

<style>
    /* Styling for the form */
    #formContainer {
        background-color: #f5f5f5; /* Light grey background */
        padding: 20px;
        border-radius: 8px;
        width: 100%;
        max-width: 600px;
        margin: 20 px auto;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        box-sizing: border-box;
        /*text-align: center;*/
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

    /* Style for radio buttons */
    .radio-group {
        text-align: left; /* Aligns radio buttons nicely */
        margin-bottom: 10px;
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

    /* Style for the response message */
    #responseMessage {
        font-size: 18px;
        font-weight: bold;
        color: #1B2430;
        display: none;
    }
</style>

<script>
document.getElementById("interestForm").addEventListener("submit", function(event){
    event.preventDefault(); // Prevent form from submitting normally

    var formData = new FormData(this);
    fetch("https://script.google.com/macros/s/AKfycbwTdhs1pjxw_hCp1ZTjUB1LVMeMoil_KB90SPUQAP7SNB6Y_Qi2diiOfu8D4GnFQo4l/exec", {
        method: "POST",
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        if (data.includes("Error")) {
            document.getElementById("responseMessage").style.color = "red"; // Error styling
            document.getElementById("responseMessage").innerHTML = "⚠️ This email is already registered.";
        } else {
            document.getElementById("interestForm").style.display = "none"; // Hide the form
            document.getElementById("responseMessage").style.color = "green"; // Success styling
            document.getElementById("responseMessage").innerHTML = "✅ Thank you! Your response has been recorded.";
        }
        document.getElementById("responseMessage").style.display = "block";
    })
    .catch(error => console.error("Error:", error));
});
</script>
