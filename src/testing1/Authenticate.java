package testing1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpSession;

public class Authenticate {
	
	int checkUsername(String uname)
	{
		Connection con=null;
		Statement stmt=null;
		int i = 0;
		String url = "jdbc:hsqldb:hsql://localhost/";
		ResultSet rs = null;
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
			String query = "select * from users where username='"+uname+"'";
			rs=stmt.executeQuery(query);    
			try {
	   			while(rs.next()){
			    	System.out.println(rs.getString("USERNAME"));
			    	i=1;
			    }
			    
	 		} catch (SQLException e) {
	 			e.printStackTrace();
	 		}
	   		 
			stmt.close();
			con.close();
		}
		catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
		if(i==0){
	    	return 1;
	    }
	    else{
	    	return 0;
	    }
	}
}
