package Log.student;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class StudentDButill{
	
		//declare a instance variable
		private static boolean isSuccess;	
		//declare variables for data base connection
		private static Connection conDB = null;
		private static Statement  stmtDB = null;
		private static ResultSet result = null;
	
		//can access with classname
	public static List<Student> validate (String firstname,String password){
		
		//create array for return all data in student (object)
		ArrayList<Student> std = new ArrayList<>();
			
		//validate
		//dispaly a error without terminating the programm
		//login student	
		try {
			
			//call data base connection 
			conDB = DBconnection.getConnection();
			stmtDB = conDB.createStatement();
			
			//sql query
			String sql = "select * from student where F_NAME = '"+firstname+"'  and  PASSWORD = '"+password+"' ";
			
			//run the sql query	
			 result = stmtDB.executeQuery(sql);
			
			//if the fname and pwd is valid retrve the data
			if(result.next()) {
				int Id = result.getInt(1);
				String Firstname = result.getString(2);
				String Lastname = result.getString(3);
				String Email = result.getString(4);
				String Pho_num = result.getString(5);
				String pwd = result.getString(6);
				String Address = result.getString(7);
				String Age = result.getString(8);
			
				//create a object for class Student
				Student s = new Student( Id, Firstname, Lastname, Email, Pho_num, pwd,Address, Age);
				//pass the s object to std array object
				std.add(s);					
			}				
		}
		catch(Exception e) {	
			
			//print the error 
			e.printStackTrace();			
		}
		
		//return std  array object
			return std;		
	}
	
	//insert student
	//return a boolean value to servlet
	public static boolean insertstudent(String fname,String lname,String email,String phonenumber,String password, String address,String age) {
		
		boolean isSuccess = false;
		
		try {
			
			//call data base connection 
			conDB = DBconnection.getConnection();
			stmtDB = conDB.createStatement();	
			// sql query
			String insert_sql = "insert into student values (0,'"+fname+"','"+lname+"','"+email+"','"+phonenumber+"','"+password+"','"+address+"','"+age+"')";
			
			int result = stmtDB.executeUpdate(insert_sql);
			
			if(result > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
									
		}
		catch(Exception e){
			e.printStackTrace();		
		}
		
		return isSuccess;		
	}
	
	
	//update student
	public static boolean updatestudent(String id,String firstname,String lastname,String email,String contactnum,String password,String address,String age) {
		
		try {
			
			//call data base connection 
			conDB = DBconnection.getConnection();
			stmtDB = conDB.createStatement();	
			//sql update query
			String update_sql ="update student set F_NAME ='"+firstname+"' , L_NAME ='"+lastname+"' , EMAIL ='"+email+"' ,PHONE_NUMBER ='"+contactnum+"',PASSWORD = '"+ password +"' , ADRESS = '"+address+"' , AGE = '"+age+"'"
					+ "where ID  = '"+id+"'";
			
			//execute,update  sql query
			int result = stmtDB.executeUpdate(update_sql);
			
			if(result > 0) {
				
				isSuccess = true;
				
			}
			else {
				
				isSuccess = false;
				
			}
					
		}
		catch(Exception e) {			
			e.printStackTrace();
		}
		
		return isSuccess;				
	}

	
	//data reterive -list of students
	public static List<Student> getStudentDetails (String Id){
		
		//convert string value to integer value(repl class)
		int convertId = Integer.parseInt(Id);
		
		ArrayList<Student> std = new  ArrayList<>();
		
		try {
			
			//call data base connection
			conDB = DBconnection.getConnection();
			stmtDB = conDB.createStatement();
			
			//reterive sql query	
			String retrieve_sql =  "select * from student where ID =  '"+convertId+"' ";
			//execute the sql
			result = stmtDB.executeQuery(retrieve_sql);
			
			while(result.next()) {
				int id = result.getInt(1);
				String fname = result.getString(2);
				String lname = result.getString(3);
				String email = result.getString(4);
				String phone = result.getString(5);
				String pwd = result.getString(6);
				String address = result.getString(7);
				String age = result.getString(8);
				
				Student s = new Student(id,fname,lname,email,phone,pwd,address,age);
				std.add(s);			
			}			
			
		}
		catch(Exception e) {		
			e.printStackTrace();
		}		
		return std;		
	}
	
	
	//delete student data
	public static boolean deletestudent(String id){
		
		int convertId = Integer.parseInt(id);
		
		
		try {
			
			//call data base connection
			conDB = DBconnection.getConnection();
			stmtDB = conDB.createStatement();
			
			//delete sql
			String delete_sql = "delete from student where ID='"+convertId+"'";
			int result = stmtDB.executeUpdate(delete_sql);

			if(result > 0) {
				
				isSuccess  = true;
				
			}
			else {
				
				isSuccess = false;	
				
			}	
		}
		catch(Exception e) {
			e.printStackTrace();	
		}	
		return isSuccess;
		
		
		
	}	
}
