<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
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
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Information</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>

<h2 align="center">Upload Form</h2>
<!-- Navbar (sit on top) -->
<%-- --%>
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card-2">
    <a href="Home.jsp" class="w3-bar-item w3-button"><b>PRO</b> Property</a>    
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="Home.jsp#projects" class="w3-bar-item w3-button">Projects</a>
      <a href="Home.jsp#about" class="w3-bar-item w3-button">About</a>
      <a href="Signup.jsp" class="w3-bar-item w3-button">Signup</a>
      <a href="Login.jsp" class="w3-bar-item w3-button">Login</a>
    </div>
  </div>
</div>

<form action="Upload" method="post" style="border:1px solid #ccc">
  <div class="container">
  	<label><b>BHK</b></label>
    <input type="text" placeholder="Enter BHK" name="BHK" required>
    <label><b>Price</b></label>
    <input type="text" placeholder="Enter Price" name="price" required>

    <label><b>Area</b></label>
    <input type="text" placeholder="Enter Area" name="area" required>

    <label><b>Type</b></label>
    <input type="text" placeholder="Residential/Commercial" name="type" required>
    
    <label><b>Location</b></label>
    <input type="text" placeholder="Enter city" name="location" required>
    
    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Upload</button>
    </div>
  </div>
</form>

</body>
</html>
