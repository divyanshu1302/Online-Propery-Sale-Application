<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>PRO Property</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card-2">
    <a href="#home" class="w3-bar-item w3-button"><b>PRO</b> Property</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#projects" class="w3-bar-item w3-button">Projects</a>
      <a href="#about" class="w3-bar-item w3-button">About</a>
      <a href="Upload.jsp" class="w3-bar-item w3-button">Sell</a>
      <a href="Login.jsp" class="w3-bar-item w3-button">Login</a>
      <a href="Signup.jsp" class="w3-bar-item w3-button">SignUp</a>
    </div>
  </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  <img class="w3-image" src="C:\Users\hp\Desktop\photos\architect.jpg" alt="Architecture" width="1500" height="800">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>PRO</b></span> <span class="w3-hide-small w3-text-light-grey">Property</span></h1>
  </div>
</header>

<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

  <!-- Project Section -->
  <div class="w3-container w3-padding-32" id="projects">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Projects</h3>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <a href="Details.jsp?param1='Jaipur'">Jaipur</a>
        </div>
        <a href="Details.jsp?param1='Jaipur'"><img src="C:\Users\hp\Desktop\photos\jalmahal.jpg" alt="House" style="width:100%"></a>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <a href="Details.jsp?param1='New Delhi'">New Delhi</a>
        </div>
        <a href="Details.jsp?param1='New Delhi'"><img src="C:\Users\hp\Desktop\photos\IndiaGate.jpg" alt="House" style="width:100%"></a>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <a href="Details.jsp?param1='Banglore'">Banglore</a>
        </div>
        <a href="Details.jsp?param1='Banglore'"><img src="C:\Users\hp\Desktop\photos\bangalore.jpg" alt="House" style="width:100%"></a>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <a href="Details.jsp?param1='Vadodara'">Vadodara</a>
        </div>
        <a href="Details.jsp?param1='Vadodara'"><img src="C:\Users\hp\Desktop\photos\vadodara.jpg" alt="House" style="width:100%"></a>
      </div>
    </div>
  </div>

  <div class="w3-row-padding">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <a href="Details.jsp?param1='Gurgaon'">Gurgaon</a>
        </div>
        <a href="Details.jsp?param1='Gurgaon'"><img src="C:\Users\hp\Desktop\photos\QutubMinar.jpg" alt="House" style="width:99%"></a>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <a href="Details.jsp?param1='Kolkata'">Kolkata</a>
        </div>
        <a href="Details.jsp?param1='Kolkata'"><img src="C:\Users\hp\Desktop\photos\kolkata.jpg" alt="House" style="width:99%"></a>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <a href="Details.jsp?param1='Chennai'">Chennai</a>
        </div>
        <a href="Details.jsp?param1='Chennai'"><img src="C:\Users\hp\Desktop\photos\idlidosa.jpg" alt="House" style="width:99%"></a>
      </div>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <div class="w3-display-container">
        <div class="w3-display-topleft w3-black w3-padding">
        <a href="Details.jsp?param1='Goa'">Goa</a>
        </div>
        <a href="Details.jsp?param1='Goa'"><img src="C:\Users\hp\Desktop\photos\goa.jpg" alt="House" style="width:99%"></a>
      </div>
    </div>
  </div>

  <!-- About Section -->
  <div class="w3-container w3-padding-32" id="about">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">About</h3>
    <p>Online property sale is a java based web application. This Online Property Sale Java Project provides a web- site to the users to access the information about the property to be purchased. This system maintains a centralized repository of all the information. This system is an online real estate management through which individuals agents or buyers can maintain their property documents by keeping and managing the property registration. This system also allows access to its information and manages all the adding, updating and deleting the tasks.
    </p>
  </div>

  <div class="w3-row-padding w3-grayscale">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <h3><b>Kartikey Pohani</b></h3>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <h3><b>Divyanshu Agarwal</b></h3>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <h3><b>Akshit Bhawnani</b></h3>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <h3><b>Samyak Jain</b></h3>
    </div>
  </div>

  
<!-- End page content -->
</div>
</body>
</html>
