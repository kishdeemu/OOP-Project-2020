package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Librarian;
import com.util.DBconnectionUtil;

public class LibrarianServiceImpl {
	
	private static Connection conn;
	private static PreparedStatement prStatement;
	
	//login starts here
	//get admin detals from Admin table and return (to Admin login servlet)
	public static ArrayList<Librarian> LoginDetails(String username,String password) 
	{
		
		//create ArryList object
		ArrayList<Librarian> DetailsList = new ArrayList<Librarian>();
		
		try 
		{
		//connect to database
			conn = DBconnectionUtil.getDBConnection();

		//SQL Query with checking
		String sql = "Select * from librarian where Username='"+username+"' AND  Password='"+password+"'";
		
		//create object for send SQL statements
		prStatement = conn.prepareStatement(sql);
		
		
		//get result of executed SQL statement to table rSet
		ResultSet rSet = prStatement.executeQuery();

			if(rSet.next())
			{
				//get user name and password from database
				String DBusername = rSet.getString(1);
				String DBpassword = rSet.getString(2);
				
				Librarian lb1 = new Librarian();
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
