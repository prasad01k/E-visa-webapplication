<!DOCTYPE html>
<html>
<head>
  <script src="https://hcaptcha.com/1/api.js" async defer></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      margin: 0; /* Remove default margin for body */
      padding: 0; /* Remove default padding for body */
    }

    /* Navigation bar styles */
    .navbar {
      background-color: #333; /* Dark background color for the navbar */
      overflow: hidden;
    }

    .navbar a {
      float: left; /* Float the links to the left */
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    /* Center the navigation bar links vertically and add some padding */
    .navbar a {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    /* Style the navigation bar links on hover */
    .navbar a:hover {
      background-color: #ddd; /* Lighter background on hover */
      color: black;
    }

    /* Full-width input fields */
    input[type=text], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }

    /* Set a style for all buttons */
    button {
      background-color: #04AA6D;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
    }

    button:hover {
      opacity: 0.8;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
      width: auto;
      padding: 10px 18px;
      background-color: #f44336;
    }

    /* Center the image and position the close button */
    .imgcontainer {
      text-align: center;
      margin: 24px 0 12px 0;
      position: relative;
    }

    img.avatar {
      width: 40%;
      border-radius: 50%;
    }

    /* Container for the form */
    .container {
      padding: 16px;
    }

    span.psw {
      float: right;
      padding-top: 16px;
    }

    /* The Modal (background) */
    .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 1; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      padding-top: 60px;
    }

    /* Modal Content/Box */
    .modal-content {
      background-color: #fefefe;
      margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
      border: 1px solid #888;
      width: 40%; /* Could be more or less, depending on screen size */
    }

    /* The Close Button (x) */
    .close {
      position: absolute;
      right: 25px;
      top: 0;
      color: #000;
      font-size: 35px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: red;
      cursor: pointer;
    }

    /* Add Zoom Animation */
    .animate {
      -webkit-animation: animatezoom 0.6s;
      animation: animatezoom 0.6s;
    }

    @-webkit-keyframes animatezoom {
      from {-webkit-transform: scale(0)} 
      to {-webkit-transform: scale(1)}
    }
      
    @keyframes animatezoom {
      from {transform: scale(0)} 
      to {transform: scale(1)}
    }

    /* Centered container for buttons */
    .center-container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 40vh;
    }

    /* Styling for the title and background */
    h2.title {
      text-align: center;
      background-color: #87CEEB; /* Sky blue background color */
      margin: 0; /* Remove margin */
      padding: 20px; /* Add some padding */
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
      span.psw {
        display: block;
        float: none;
      }
      .cancelbtn {
        width: 100%;
      }
    }
  </style>
</head>
<body style="background-color: #5CDB95" >
<h2 align="center" style="margin-top: 40vh" >Welcome to E-visa Processing System</h2>
<div  class="center-container">
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
<button style="width:auto;color: white ;background-color: black;" ><a href="registration">SignUp</a></button>

</div>


<div id="id01" class="modal">
  
  <form class="modal-content animate" th:action="@{/login}" method="post" th:object="${user}">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <h2>User Login</h2>
      <img src="img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="gmail"><b>Gmail</b></label>
      <input type="text" placeholder="Enter gmail" name="gmail" th:field="*{gmail}" required>

      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password"  th:field="*{password}" required>
          <div class="h-captcha" data-sitekey="f50c9b0e-9d03-4fb9-94c0-4528327e0633"></div>
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">click here to register <a href="/registration">register</a></span>
    </div>
  </form>


</div>
 <div th:if="${param.error}" class="popup">
        Enter correct details.
</div>

<script>
function onSubmit(event) {
  event.preventDefault();

  // Verify hCaptcha
  const token = document.querySelector('.h-captcha').value;
  if (!token) {
    alert("Please complete the hCaptcha.");
    return false;
  }

  // Enable the submit button
  document.getElementById('submitBtn').style.display = 'block';

  // Submit the form
  document.getElementById('submitBtn').click();
  return true;
}


// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>
