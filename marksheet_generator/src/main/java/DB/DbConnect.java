package DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
public static Connection con=null;

public static Connection getCon() {
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/marksheetgenerator","root","1234" );
		
		
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	return con;
}
}
