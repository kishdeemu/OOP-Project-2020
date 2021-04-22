package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Book;
import com.util.DBconnectionUtil;


public class BookServiceImpl implements IntBookService {

	private static PreparedStatement preSt;
	private static Connection conn;
	private ArrayList booklist;
	
	//Add book
	@Override
	public boolean addBook(Book book) {
		
		
		//Declaring attribute
		boolean check1 = false;
		
		try 
		{
			//Checking DB connection
			conn = DBconnectionUtil.getDBConnection();
			conn.setAutoCommit(false);
			
			//Initialize Query
			String sql = "Insert into book(bkId, bkTitle, bkEdition, bkAuthor, bkCopies, bkRemarks)values(?, ?, ?, ?, ?, ?)";
			
			//Preparing to insert values from Book class
			preSt = conn.prepareStatement(sql);
			
			//Calling getters to get values
			preSt.setString(1, String.valueOf(book.getBookId()));
			preSt.setString(2, book.getBookTitle());
			preSt.setString(3, book.getBookEdition());
			preSt.setString(4, book.getBookAuthor());
			preSt.setString(5, String.valueOf(book.getBookCopies()));
			preSt.setString(6, book.getBookRemarks());
			
			//Executing above statements
			int resultex = preSt.executeUpdate();
			
			//Committing connection. 
			conn.commit();
			
			//check whether data inserted or not
			if(resultex > 0) {
				check1 = true;
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
		return check1;
	}
	
	
//To display all the books getting them via DB
	@Override
	public ArrayList<Book> getBooks(String bkId) {
		
		
		ArrayList<Book> booklist = new ArrayList<Book>();
		
		try {
			//Check DB connection
			conn = DBconnectionUtil.getDBConnection();
			
			//Making this method to get details when id given or not
			if(bkId == null || bkId.isEmpty()) {
				
				//Getting all books
				String SQL_all = "Select * From book";
				preSt = conn.prepareStatement(SQL_all);
			}
		    else {
				//Getting only selected book
				String SQL_select = "Select * From book Where bkId =?";
				preSt = conn.prepareStatement(SQL_select);
				preSt.setString(1,String.valueOf(bkId));
			}
			
			ResultSet result = preSt.executeQuery();
			
			//Setting data to attributes book class
			while(result.next()) {
			
				Book book = new Book();
				book.setBookId(Integer.parseInt(result.getString(1)));
				book.setBookTitle(result.getString(2));
				book.setBookEdition(result.getString(3));
				book.setBookAuthor(result.getString(4));
				book.setBookCopies(Integer.parseInt(result.getString(5)));
				book.setBookRemarks(result.getString(6));
				booklist.add(book);
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
		
		return booklist;
	}
//To update book details
	@Override
	public boolean updateBook(Book book) {
		
		//declaring attribute
		boolean result = false;
		
		try {
			//Check DB connection
			conn = DBconnectionUtil.getDBConnection();
			
			//SQL script for data insertion
			String sql = "Update book Set bkTitle = ?,bkEdition = ?,bkAuthor = ?, bkCopies = ?, bkRemarks = ? where bkId = ?";
			
			preSt = conn.prepareStatement(sql);
			
			preSt.setString(1, book.getBookTitle());
			preSt.setString(2, book.getBookEdition());
			preSt.setString(3, book.getBookAuthor());
			preSt.setString(4, String.valueOf(book.getBookCopies()));
			preSt.setString(5, book.getBookRemarks());
			preSt.setString(6,String.valueOf(book.getBookId() ));
			
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
	
//To delete a book
	@Override
	public boolean deleteBook(String bkId) {
		
		//declaring attribute
		boolean result = false;
		
		try {
			//Check DB connection
			conn = DBconnectionUtil.getDBConnection();
			
			//SQL script for delete 
			String sql = "Delete From book Where bkId = ?" ;
			
			preSt = conn.prepareStatement(sql);
			
			preSt.setString(1, bkId);

			
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
