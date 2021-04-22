package com.teacher.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.teacher.model.Homework;
import com.teacher.util.DBconnectionUtil;

public class HomeworkServiceImpl implements IntHomeworkService {

	private static PreparedStatement preSt;
	private static Connection conn;
	private ArrayList hwlist;
	
//Add HomeWork
	@Override
	public boolean addHomework(Homework HW) {
		// TODO Auto-generated method stub
		
		//Declaring attribute
		boolean check = false;
		
		try 
		{
			//Checking DB connection
			conn = DBconnectionUtil.getDBConnection();
			conn.setAutoCommit(false);
			
			//Initialize Query
			String sql = "Insert into homework(HWID, Grade, Subject, Description, Duedate)values(?, ?, ?, ?, ?)";
			
			//Preparing to insert values from homework class
			preSt = conn.prepareStatement(sql);
			
			//Calling getters to get values
			preSt.setString(1, HW.getHWID());
			preSt.setString(2, HW.getGrade());
			preSt.setString(3, HW.getSubject());
			preSt.setString(4, HW.getDescription());
			preSt.setString(5, HW.getDuedate());
			
			//Executing above statements
			int resultex = preSt.executeUpdate();
			
			//Committing connection. 
			conn.commit();
			
			//check whether data inserted or not
			if(resultex > 0) {
				check = true;
			}
			
		}
		catch (ClassNotFoundException | SQLException | NumberFormatException E1) 
		{
			E1.printStackTrace();
		}
		
		finally
		{
			//closing the DB connection 
			try
			{
				if(preSt != null)
				{
					preSt.close();
				}
			
				if(conn != null)
				{
					conn.close();
				}
			}
			//catching closing exceptions
			catch(SQLException E2)
			{
				E2.printStackTrace();	
			}
		}
		return check;
	}
	
//Arraylist for display homework
	@Override
	public ArrayList<Homework> getHomework(String HWID) {
		
ArrayList<Homework> hwlist = new ArrayList<Homework>();
		
		try {
			//Check DB connection
			conn = DBconnectionUtil.getDBConnection();
			
			//Making this method to get details when id given or not
			if(HWID == null || HWID.isEmpty()) {
				
				//Getting all hw
				String SQL_all = "Select * From homework";
				preSt = conn.prepareStatement(SQL_all);
			}
		    else {
				//Getting only selected hw
				String SQL_select = "Select * From homework Where HWID =?";
				preSt = conn.prepareStatement(SQL_select);
				preSt.setString(1,String.valueOf(HWID));
			}
			
			ResultSet result = preSt.executeQuery();
			
			//Setting data to attributes hw class
			while(result.next()) {
			
				Homework HW = new Homework();
				
				HW.setHWID(result.getString(1));
				HW.setGrade(result.getString(2));
				HW.setSubject(result.getString(3));
				HW.setDescription(result.getString(4));
				HW.setDuedate(result.getString(5));
				hwlist.add(HW);
			}
		}
		catch (ClassNotFoundException | SQLException | NumberFormatException E1) 
		{
			E1.printStackTrace();
		}
		
		finally
		{
			//closing the DB connection 
			try
			{
				if(preSt != null)
				{
					preSt.close();
				}
			
				if(conn != null)
				{
					conn.close();
				}
			}
			//catching closing exceptions
			catch(SQLException E2)
			{
				E2.printStackTrace();	
			}
		
	
		}
		
		return hwlist;
	}
//To Update HW
	@Override
	public boolean updateHomework(Homework HW) {
		
		//declaring attribute
		boolean result = false;
		
		try {
			//Check DB connection
			conn = DBconnectionUtil.getDBConnection();
			
			//SQL script for data insertion
			String sql = "Update homework Set Grade = ?,Subject = ?, Description = ?, Duedate = ? where HWID = ?";
			
			preSt = conn.prepareStatement(sql);
			
			
			preSt.setString(1, HW.getGrade());
			preSt.setString(2, HW.getSubject());
			preSt.setString(3, HW.getDescription());
			preSt.setString(4, HW.getDuedate());
			preSt.setString(5, HW.getHWID());
			
			//Executing above statements
			int resultex = preSt.executeUpdate();
			
			//Check for errors
			if(resultex > 0) {
				
			result = true;
				
			}
	
		}
		catch (ClassNotFoundException | SQLException | NumberFormatException E1) 
		{
			E1.printStackTrace();
		}
		
		finally
		{
			//closing the DB connection 
			try
			{
				if(preSt != null)
				{
					preSt.close();
				}
			
				if(conn != null)
				{
					conn.close();
				}
			}
			//catching closing exceptions
			catch(SQLException E2)
			{
				E2.printStackTrace();	
			}
		
	
		}

		
		return result;
	}

//Delete Homework
	@Override
	public boolean deleteHomework(String HWID) {
		
			
			//declaring attribute
			boolean result = false;
			
			try {
				//Check DB connection
				conn = DBconnectionUtil.getDBConnection();
				
				//SQL script for delete 
				String sql = "Delete From homework Where HWID = ?" ;
				
				preSt = conn.prepareStatement(sql);
				
				preSt.setString(1, HWID);

				
				//Executing above statements
				int resultex = preSt.executeUpdate();
				
				//Check for errors
				if(resultex > 0) {
					
				result = true;
					
				}
		
			}
			catch (ClassNotFoundException | SQLException | NumberFormatException E1) 
			{
				E1.printStackTrace();
			}
			
			finally
			{
				//closing the DB connection 
				try
				{
					if(preSt != null)
					{
						preSt.close();
					}
				
					if(conn != null)
					{
						conn.close();
					}
				}
				//catching closing exceptions
				catch(SQLException E2)
				{
					E2.printStackTrace();	
				}
			
		
			}
			
			return result;
		}
	
	
	

}
