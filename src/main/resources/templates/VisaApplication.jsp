<!DOCTYPE html>
<html lang="en">
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Visa Application Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #5CDB95;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 50px;
            margin-top: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
        }

        input[type="text"],
        input[type="email"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        form {
        background-color: #87CEEB; /* Use the hex color code for sky blue */
        padding: 20px; /* Add some padding for spacing */
        border-radius: 50px; /* Add rounded corners */
    }
    </style>
</head>
<body>

<div id="submissionSuccessAlert" class="alert alert-success" style="display: none;">
    Data submitted successfully!
</div>
<script>
    // JavaScript to show the pop-up on page load
    window.addEventListener('DOMContentLoaded', (event) => {
        if (${submissionSuccess}) {
            document.getElementById('submissionSuccessAlert').style.display = 'block';
        }
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<nav class="navbar navbar-dark"  style="background-color: #05386B ;">

  <div class="container-fluid">
    <a class="navbar-brand" href="/home">
      <img src="logo1.jpg" height="80px" alt="">

    </a>
    <ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/home"><p class="text-white " style="font-size: 22px;">Home</p></a>
  </li>

  <li class="nav-item">
    <a class="nav-link" href="/VisaApplication"><p class="text-white" style="font-size: 22px;">Apply For Visa</p></a>
  </li>

   <li class="nav-item">
    <a class="nav-link" href="/VisaTypes"><p class="text-white" style="font-size: 22px;">Visa Types</p></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/Requirements"><p class="text-white" style="font-size: 22px;">Requirements</p></a>
  </li>
      
  <li class="nav-item">
    <a class="nav-link" href="/FeesAndPayments"><p class="text-white" style="font-size: 22px;">Fees and Payments</p></a>
  </li>

  <li class="nav-item">
    <a class="nav-link" href="/Support"><p class="text-white" style="font-size: 22px;">Support</p></a>
  </li>
	  <li class="nav-item">
    <a class="nav-link" href="/AboutUs"><p class="text-white" style="font-size: 22px;">AboutUs</p></a>
  </li>
      
  <li class="nav-item">
    <a class="nav-link" href="/NewsUpdates"><p class="text-white" style="font-size: 22px;">News Updates</p></a>
  </li>

  <li class="nav-item">
    <a class="nav-link" href="/ContactUs"><p class="text-white" style="font-size: 22px;">Contact Us</p></a>
  </li>
	
	<!--  <li class="nav-item"> -->
    <!--  <a class="nav-link" href="/login"><p class="text-blue">Login/Register</p></a>-->
  <!--  </li>-->
<!--  <li class="nav-item">-->
<!--    <a class="nav-link" href="/register"><p class="text-black">Hello</p></a>-->
<!--  </li>-->

<!--  <li class="nav-item">-->
<!--    <a class="nav-link" href="/register"><p class="text-black">HOwreyou</p></a>-->
<!--  </li>-->

</ul>
  </div>
  </nav>
    <div class="container">
        <h1>E-Visa Application Form</h1>
        <form method="post" action="/submitApplication">
            <div class="form-group">
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullname" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="country">Country of Residence:</label>
                <select id="country" name="cor" required>
                    <option value="">Select your country</option>
                    <option value="India">India</option>
                    <option value="Canada">Canada</option>
                    <option value="United Kingdom">United Kingdom</option>
                    <option value="Australia">Australia</option>
                    <option value="South Africa">South Africa</option>
                    <option value="France">France</option>
                </select>
            </div>
            <div class="form-group">
                <label for="passportNumber">Passport Number:</label>
                <input type="number" id="passportnumber" name="passportnumber" required>
            </div>
            <div class="form-group">
                <label for="dateOfBirth">Date of Birth:</label>
                <input type="text" id="dob" name="dob" required>
            </div>
            <div class="form-group">
                <label for="visaType">Select Visa Type:</label>
                <select id="visaType" name="visatype" required>
                    <option value="">Select Visa Type</option>
                    <option value="tourist">Tourist Visa</option>
                    <option value="business">Business Visa</option>
                    <option value="student">Student Visa</option>
                </select>
            </div>
            <div class="form-group">
                <label for="purposeOfVisit">Purpose of Visit:</label>
                <textarea id="purposeOfVisit" name="pov" required rows="4"></textarea>
            </div>
            <div class="form-group">
                <label for="travelDate">Intended Travel Date:</label>
                <input type="text" id="travelDate" name="Tdate" required>
            </div>
            <div class="form-group">
                <label for="travelDuration">Intended Travel Duration (in days):</label>
                <input type="number" id="travelDuration" name="nodays" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Submit Application">
            </div>
        </form>
    </div>
</body>
</html>
