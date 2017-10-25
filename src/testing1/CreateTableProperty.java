package testing1;

import java.sql.*;

public class CreateTableProperty{
static Connection con;
static Statement stmt;

public static void main(String args[])
{

		String url = "jdbc:hsqldb:hsql://localhost/";
		String createString = "create table Property " +
							"(Pid int, " +
							"BHK int," +
							"Price int," +
							"Area int," +
							"Type varchar(32)," +							
							"location varchar(32))" ;
							

		try {
			Class.forName("org.hsqldb.jdbcDriver");

		} catch(java.lang.ClassNotFoundException e) {
			System.err.print("ClassNotFoundException: ");
			System.err.println(e.getMessage());
		}

		try {
			con = DriverManager.getConnection(url, "sa", "");
			stmt = con.createStatement();
   		    stmt.executeUpdate(createString);
		} catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}finally{
			try{
				stmt.close();
				con.close();
			}catch(SQLException e){}
		}
	}
}