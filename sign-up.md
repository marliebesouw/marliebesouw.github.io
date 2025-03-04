---
layout: default
title: Sign-up
---

# Sign-up

# Contact Us
<div class="content">
    <div id="contactFormContainer">
        <form id="contactForm">
            
            <label for="name">Full Name*:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Email Address*:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="message">Your Message*:</label>
            <textarea id="message" name="message" rows="5" required></textarea><br><br>

            <button type="submit">Send Message</button>

        </form>

        <p id="contactResponseMessage" style="display: none;"></p>
    </div>
</div>

<style>
    /* Styling for the form */
    #contactFormContainer {
        background-color: #f5f5f5;
        padding: 20px;
        border-radius: 8px;
        width: 50%;
        margin: auto;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    /* Style for input fields */
    input[type="text"], input[type="email"], textarea {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    /* Style for the submit button */
    button {
        background-color: #1B2430;
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
    #contactResponseMessage {
        font-size: 18px;
        font-weight: bold;
        color: #1B2430;
        display: none;
    }
</style>

<script>
document.getElementById("contactForm").addEventListener("submit", function(event){
    event.preventDefault(); // Prevent default form submission

    var formData = new FormData(this);
    fetch("https://script.google.com/macros/s/AKfycbxNI_smEA0FSvScU17XYgXzeKLxedljyOrpKw0Et511vXPbbzvgbzfalUmw73uwtz9F6Q/exec", { 
        method: "POST",
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        document.getElementById("contactForm").style.display = "none";
        document.getElementById("contactResponseMessage").style.color = "green";
        document.getElementById("contactResponseMessage").innerHTML = "✅ Your message has been sent successfully!";
        document.getElementById("contactResponseMessage").style.display = "block";
    })
    .catch(error => console.error("Error:", error));
});
</script>
