package testing1;

import java.sql.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Connection con = null;
		int i = 0;
		Statement stmt = null;
		String uname=request.getParameter("uname");
		String pass=request.getParameter("psw");
		HttpSession session = request.getSession();
		session.setAttribute("username", uname);
		User cur = new User();
		String query = "select * from users where username='"+uname+"'"+"and password='"+pass+"'";
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
   		 try {
   			while(rs.next()){
		    	System.out.println(rs.getString("USERNAME"));
		    	  HttpSession session1=request.getSession();
		    	session1.setAttribute("username",rs.getString("USERNAME"));
		    	session1.setAttribute("password",rs.getString("password"));
		    	
		    	i=1;
		    }
		    if(i==0){
		    	response.sendRedirect("Login.jsp");
		    }
		    else{
		    	User.status=1;
		    	response.sendRedirect("Home.jsp");
		    }
 		} catch (SQLException e) {
 			e.printStackTrace();
 		}
   		 
 		
// 		if(pass.equals(cur.password))
// 		{
// 			response.sendRedirect("Home.jsp");
// 		}
// 		else
// 		{
// 			System.out.println("111111111111111"+cur.password);
// 			response.sendRedirect("Login.jsp");
// 		}
		} catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
//		finally{
//			try{
//				stmt.close();
//				con.close();
//			}catch(SQLException e){}
//		}
		
		
	}	
}
