---
layout: default
title: Contact
---

<!-- # Contact

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
</div> -->



# Contact 

<div class="content">
    <div id="formContainer">
        <form id="contactForm">
        
            <label for="name">Full Name*:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Your Email Address*:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label>What is your request about?*:</label> <br>
            <input type="radio" id="signup" name="interest" value="Signup" required>
            <label for="signup">Sign-up & Payment</label><br>

            <input type="radio" id="course" name="interest" value="Course">
            <label for="course">Course Content & General Questions</label><br><br>

            <label for="message">Your Message*:</label>
            <textarea id="message" name="message" rows="4" required></textarea><br><br>

            <button type="submit">Submit</button>

        </form>

        <p id="responseMessage" style="display: none;"></p>
    </div>
</div>

<script>
document.getElementById("contactForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent default form submission

    var formData = new FormData(this);

    fetch("https://script.google.com/macros/s/AKfycbwlqbltr9tJAURhjigfJh3Ow9v8v23iMSOj_1Oj2dN1_PbhYIPQFUqYbTVX235pXRrbIQ/exec", {
        method: "POST",
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        if (data.includes("Error")) {
            document.getElementById("responseMessage").style.color = "red";
            document.getElementById("responseMessage").innerHTML = "⚠️ " + data;
        } else {
            document.getElementById("contactForm").style.display = "none";
            document.getElementById("responseMessage").style.color = "green";
            document.getElementById("responseMessage").innerHTML = "✅ Thank you! Your request has been submitted.";
        }
        document.getElementById("responseMessage").style.display = "block";
    })
    .catch(error => console.error("Error:", error));
});
</script>


<!-- # Contact Us

<div class="content">
    <div id="formContainer">
        <form id="contactForm">
        
            <label for="name">Full Name*:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Your Email Address*:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label>What is your request about?*:</label> <br>
            <input type="radio" id="signup" name="topic" value="signup" required>
            <label for="signup">Sign-up & Payment</label><br>

            <input type="radio" id="course" name="topic" value="course">
            <label for="course">Course Content & General Questions</label><br><br>

            <label for="message">Your Message*:</label>
            <textarea id="message" name="message" rows="4" required></textarea><br><br>

            <button type="submit">Send Email</button>

        </form>
    </div>
</div> -->

<style>
    /* Styling for the form */
    #formContainer {
        background-color: #f5f5f5;
        padding: 20px;
        border-radius: 8px;
        width: 100%;
        max-width: 600px; /* nice readable width on large screens */
        margin: 20px auto;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        box-sizing: border-box;
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
</style>

<script>
document.getElementById("contactForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent default form submission

    // Get form values
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var message = document.getElementById("message").value;

    // Determine recipient email based on selected topic
    var recipientEmail = "";
    if (document.getElementById("signup").checked) {
        recipientEmail = "judith.vanwerven-nobel@radboudumc.nl";
    } else if (document.getElementById("course").checked) {
        recipientEmail = "marlie.besouw@radboudumc.nl";
    } else {
        alert("Please select a topic for your request.");
        return;
    }

    // // Construct mailto link
    // var mailtoLink = "mailto:" + recipientEmail +
    //                  "?subject=" + encodeURIComponent("Contact Request from " + name) +
    //                  "&body=" + encodeURIComponent("Name: " + name + "\nEmail: " + email + "\n\nMessage:\n" + message);

    // // Open the mail client
    // window.location.href = mailtoLink;
});
</script>



