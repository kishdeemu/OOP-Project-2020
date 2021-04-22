package Log.student;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
	
	//get DB connection 
	//crete variable for save  DB url,DB name and DB password 
	private static String url = "jdbc:mysql://localhost:3306/online_school";
	private static String username ="root";
	private static String password ="12345";	
	//create a varible for return the DB connection
	private static Connection DBcon;

	public static Connection getConnection() {
		
		try {
			
			//create thr drive
			Class.forName("com.mysql.jdbc.Driver");		
			DBcon =DriverManager.getConnection(url, username, password);
			
		   }
		catch(Exception e) {
			System.out.println("!!CONNECTION OF THE DATA BASE IS NOT SUCCESS!!");
		}
		
		return DBcon;	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
