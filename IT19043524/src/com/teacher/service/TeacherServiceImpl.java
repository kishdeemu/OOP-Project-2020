package com.teacher.service;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.teacher.model.Teacher;
import com.teacher.util.DBconnectionUtil;

public class TeacherServiceImpl {
	
	private static Connection conn;
	private static PreparedStatement prStatement;

	public static ArrayList<Teacher> LoginDetails(String username,String password) 
	{
		
		//create ArryList object
		ArrayList<Teacher> DetailsList = new ArrayList<Teacher>();
		
		try 
		{
		//connect to database
			conn = DBconnectionUtil.getDBConnection();

		//SQL Query with checking
		String sql = "Select * from users where username='"+username+"' AND  password='"+password+"'";
		
		//create object for send SQL statements
		prStatement = conn.prepareStatement(sql);
		
		
		//get result of executed SQL statement to table rSet
		ResultSet rSet = prStatement.executeQuery();

			if(rSet.next())
			{
				//get user name and password from database
				String DBusername = rSet.getString(1);
				String DBpassword = rSet.getString(2);
				
				Teacher lb1 = new Teacher();
				lb1.setUsername(DBusername);
				lb1.setPassword(DBpassword);
				
				DetailsList.add(lb1);
			}

		} 
		
		catch (SQLException  | ClassNotFoundException e) 
		{
			e.printStackTrace();
		} 
		
		finally 
		{
		//close connection
			try 
			{
				if (prStatement != null)
				{
					prStatement.close();
				}
				
				if (conn != null) 
				{
					conn.close();
				}
			} 
			
		catch (SQLException ex)
		{
		ex.printStackTrace();
		}
			
		}
	
		return DetailsList;
	
	}

}
