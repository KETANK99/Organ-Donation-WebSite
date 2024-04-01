package DB;


import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {

public static Connection con=null;
public static String status=""; 

public static Connection getCon()
{
	try {
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/organdonate","root","root");
	status="Successfull";
	return con;
	}catch(Exception e)
	{
		System.out.println("sskkkkkkkkkkkkkkkkkkkkkkkkk");
		e.printStackTrace();
		con=null;
		status="Failed";
		return con;
	}
	finally {
		
		System.out.println("DB Connection is "+status);
	}
	
}
	
}
