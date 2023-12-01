<!DOCTYPE html>
<html>
<head>
    <title>Display Submitted Data</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            background-color: #007BFF;
            color: #fff;
        }

        h1 {
            text-align: center;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body style="background-color: "#5CDB95";">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
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
    <h1>Submitted Data</h1>
    <table>
        <tr>
            <th>Full Name</th>
            <th>Email</th>
            <th>Country Of Residence</th>
            <th>Passport Number</th>
            <th>Date Of Birth</th>
            <th>Visa Type</th>
            <th>Purpose of Visit</th>
            <th>Travel date</th>
            <th>No of days travel</th>
            <!-- Add more table headers for other fields -->
        </tr>
        <tr th:each="userApplication : ${userApplications}">
            <td th:text="${userApplication.fullname}"></td>
            <td th:text="${userApplication.email}"></td>
            <td th:text="${userApplication.cor}"></td>
            <td th:text="${userApplication.passportnumber}"></td>
            <td th:text="${userApplication.dob}"></td>
            <td th:text="${userApplication.visatype}"></td>
            <td th:text="${userApplication.pov}"></td>
            <td th:text="${userApplication.Tdate}"></td>
            <td th:text="${userApplication.nodays}"></td>
        </tr>
    </table>
    
  <div style="text-align: center; margin-top: 20px;">
        <a href="/home">
            <button>Back to Home</button>
        </a>
    </div>
</body>
</html>
