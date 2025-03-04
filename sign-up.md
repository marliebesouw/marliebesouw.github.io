---
layout: default
title: Sign-up
---

# Sign-up

# Contact Us
# Contact Us

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
</div>

<style>
    /* Styling for the form */
    #formContainer {
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

    // Construct mailto link
    var mailtoLink = "mailto:" + recipientEmail +
                     "?subject=" + encodeURIComponent("Contact Request from " + name) +
                     "&body=" + encodeURIComponent("Name: " + name + "\nEmail: " + email + "\n\nMessage:\n" + message);

    // Open the mail client
    window.location.href = mailtoLink;
});
</script>
