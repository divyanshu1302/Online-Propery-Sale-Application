package testing1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con;
		Statement stmt;
		String msg=new String("Username_already_Registered");
		Authenticate auth=new Authenticate();
		String uname = request.getParameter("name");
		String pass = request.getParameter("psw");
		String repeat= request.getParameter("repeat-psw");
		if(pass.equals(repeat)==false)
		{
			response.sendRedirect("Signup.jsp");
		}
		else
		{
			if(auth.checkUsername(uname)==1)
			{
				String url = "jdbc:hsqldb:hsql://localhost/";
				
				try{
					Class.forName("org.hsqldb.jdbcDriver");
				}
				catch(java.lang.ClassNotFoundException e) {
					System.err.print("ClassNotFoundException: ");
					System.err.println(e.getMessage());
				}
				
				try{
					con = DriverManager.getConnection(url, "sa", "");
					
					stmt = con.createStatement();
					stmt.executeUpdate("INSERT INTO users values"+
							" ('"+uname+"','"+pass+"')");
					response.sendRedirect("Home.jsp");
					
					stmt.close();
					con.close();
				} 
				catch(SQLException ex) {
					System.err.println("SQLException: " + ex.getMessage());
				}
			}
			else
			{
				request.setAttribute("a", msg);
				request.getRequestDispatcher("Signup.jsp").forward(request, response);
			//	response.sendRedirect("Signup.jsp");
			}

		}
				
	}

	

}
