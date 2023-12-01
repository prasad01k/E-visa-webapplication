<!DOCTYPE html>
<html>
<head>
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>Customer Support and FAQs</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:#5CDB95;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
        h1 {
            font-size: 24px;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            font-size: 20px;
            color: #333;
        }
        p {
            font-size: 16px;
        }
        .faq-item {
            margin-bottom: 20px;
        }
        .question {
            font-weight: bold;
            cursor: pointer;
        }
        .answer {
            display: none;
            padding: 10px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
    </style>
</head>
<body>
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
    <header>
        <h1>Customer Support and FAQs</h1>
    </header>
    <div class="container">
        <div class="faq-item">
            <div class="question" onclick="toggleAnswer(this)">How do I create an account?</div>
            <div class="answer">To create an account, click on the "Sign Up" button and follow the on-screen instructions.</div>
        </div>
        <div class="faq-item">
            <div class="question" onclick="toggleAnswer(this)">What payment methods are accepted?</div>
            <div class="answer">We accept credit cards, PayPal, and bank transfers as payment methods.</div>
        </div>
        <div class="faq-item">
            <div class="question" onclick="toggleAnswer(this)">How can I contact customer support?</div>
            <div class="answer">You can reach our customer support team at support@example.com or by calling +1-123-456-7890.</div>
        </div>
        <!-- Add more FAQ items as needed -->
    </div>

    <script>
        function toggleAnswer(question) {
        	const answer = question.nextElementSibling;
            if (answer.style.display === "none" || answer.style.display === "") {
                answer.style.display = "block";
            } else {
                answer.style.display = "none";
            }
        }
    </script>
</body>
</html>
