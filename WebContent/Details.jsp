<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<title>Details</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
 <style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
<body>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding w3-card-2">
    <a href="Home.jsp" class="w3-bar-item w3-button"><b>PRO</b> Property</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="Home.jsp#projects" class="w3-bar-item w3-button">Projects</a>
      <a href="Home.jsp#about" class="w3-bar-item w3-button">About</a>
      <a href="Upload.jsp" class="w3-bar-item w3-button">Sell</a>
      <a href="Login.jsp" class="w3-bar-item w3-button">Login</a>
      <a href="Signup.jsp" class="w3-bar-item w3-button">SignUp</a>
    </div>
  </div>
</div>
  

<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.HttpServletRequest.*"%>


<%
int count=0;
String l =request.getParameter("param1");
//System.out.print(l);
int BHK;
int price;
int area;
String type;
String location;
int pid;
HttpServletResponse res;
    Connection con=null;
    Statement stmt=null;
//    Property prop = new Property();
    String query="select * from Property where Location= "+ l+" ";
    
    String url = "jdbc:hsqldb:hsql://localhost/";
    ResultSet rs = null;
    
    try {
        Class.forName("org.hsqldb.jdbcDriver");

    } catch(java.lang.ClassNotFoundException e) {
        System.err.print("ClassNotFoundException: ");
        System.err.println(e.getMessage());
    }
    
    try {
            con = DriverManager.getConnection(url, "sa", "");
            stmt = con.createStatement();
               rs=stmt.executeQuery(query);
    }
    catch(SQLException ex) {
        System.err.println("SQLException: " + ex.getMessage());
    }
     finally
    {
        try
        {
            stmt.close();
            con.close();
        }catch(SQLException e){}
    }
    %>
               <!-- Top menu -->
<div class="w3-top">
<%--     <div class="w3-center w3-padding-16"><b><h1><%=l %></h1></b></div> --%>
  
</div>          
                   

<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">
	
  <!-- First Photo Grid-->
 
    <%while(rs.next()){ 
    			count++;
            	HttpSession session0=request.getSession();
   		    	session0.setAttribute("pid",rs.getString("pid"));
   		    	session0.setAttribute("bhk",rs.getString("bhk"));
		    	session0.setAttribute("area",rs.getString("area"));
		    	session0.setAttribute("price",rs.getString("price"));
			   	session0.setAttribute("location",rs.getString("location"));
			    session0.setAttribute("type",rs.getString("type")); %>
  
    <div class="w3-row-padding">
      <img src="C:\Users\hp\Desktop\photos\house<%=count%>.jpg" alt="Sandwich" style="width:100%">
      <p><h4><b>Location : <%=rs.getString("location") %></b></h4></p>
      <p><h4><b>BHK : <%=rs.getString("BHK") %></b></h4></p>
      <p><h4><b>Price : <%=rs.getString("price") %></b></h4></p>
      <p><h4><b>Area (in sqft.) : <%=rs.getString("area") %></b></h4></p>
      <p><h4><b>Property Type : <%=rs.getString("type") %></b></h4></p>
    </div>
  </div>
  
   <%}%>  
<!-- End page content -->
</div>
  
</body>
</html>
