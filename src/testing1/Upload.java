package testing1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/Upload")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
    int pid=1;   
    
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=null;
		Statement stmt=null;
//		int BHK = Integer.parseInt(request.getParameter("BHK"));
//		int price = Integer.parseInt(request.getParameter("price"));
//		int area = Integer.parseInt(request.getParameter("area"));
//		
		if(User.status==0)
		{
			response.sendRedirect("Login.jsp");
		}
		else if(User.status==1)
		{
			Property pro = new Property();
			pro.getBHK(request.getParameter("BHK"));
			pro.getprice(request.getParameter("price"));
			pro.getarea(request.getParameter("area"));
			pro.gettype(request.getParameter("type"));
			pro.getlocation(request.getParameter("location"));
			String url = "jdbc:hsqldb:hsql://localhost/";
			//System.out.println(price+" "+area);
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
				String sql="INSERT INTO property values"+
						" (" + pid + "," + pro.BHK + "," + pro.price + "," + pro.area +","+ "'" + pro.type + "'" + ","+"'" + pro.location + "'"+ ")";
				
//				String sql = "INSERT INTO property values"+
//						" (+pid+,'"+BHK+"','"+price+"','"+area+"','"+type+"','"+location+"')";
				//System.out.println(sql);
				stmt.executeUpdate(sql);    
				pid++;
				response.sendRedirect("Home.jsp");
				stmt.close();
				con.close();
			}
			catch(SQLException ex) {
				System.err.println("SQLException: " + ex.getMessage());
		}

		}
	}
}
