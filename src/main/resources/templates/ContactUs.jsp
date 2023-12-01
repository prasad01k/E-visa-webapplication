<jsp:include page="navbar.jsp" />
<!DOCTYPE html>
<html>
<head>
<title>Contact form</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<style>
html, body {
min-height: 100%;
padding: 0;
margin: 0;
font-family: Roboto, Arial, sans-serif;
font-size: 14px;
color: #5CDB95;
}
h1 {
margin: 0 0 20px;
font-weight: 400;
color: #1c87c9;
}
p {
margin: 0 0 5px;
}
.main-block {
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
min-height: 100vh;
background: #5CDB95;
}
form {
padding: 25px;
margin: 25px;
box-shadow: 0 2px 5px #f5f5f5; 
background: #f5f5f5; 
}
.fas {
margin: 25px 10px 0;
font-size: 72px;
color: #fff;
}
.fa-envelope {
transform: rotate(-20deg);
}
.fa-at , .fa-mail-bulk{
transform: rotate(10deg);
}
input, textarea {
width: calc(100% - 18px);
padding: 8px;
margin-bottom: 20px;
border: 1px solid #1c87c9;
outline: none;
}
input::placeholder {
color: #666;
}
button {
width: 100%;
padding: 10px;
border: none;
background: #1c87c9; 
font-size: 16px;
font-weight: 400;
color: #fff;
}
button:hover {
background: #2371a0;
} 
@media (min-width: 568px) {
.main-block {
flex-direction: row;
}
.left-part, form {
width: 50%;
}
.fa-envelope {
margin-top: 0;
margin-left: 20%;
}
.fa-at {
margin-top: -10%;
margin-left: 65%;
}
.fa-mail-bulk {
margin-top: 2%;
margin-left: 28%;
}
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



<div class="main-block" >
<div class="left-part">
<i class="fas fa-envelope"></i>
<i class="fas fa-at"></i>
<i class="fas fa-mail-bulk"></i>
</div>
<form action="/home">
<h1>Contact Us</h1>
<div class="info">
<input class="fname" type="text" name="name" placeholder="Full name">
<input type="text" name="name" placeholder="Email">
<input type="text" name="name" placeholder="Phone number">
<input type="text" name="name" placeholder="Website">
</div>
<p>Message</p>
<div>
<textarea rows="4"></textarea>
</div>
<button type="submit" href="/home">Submit</button>
</form>
</div>
</body>
</html>