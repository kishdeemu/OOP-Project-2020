package com.service;

import java.util.ArrayList;

import com.model.Book;


public interface IntBookService {

//Add new book 
	
	public boolean addBook(Book book);
	
//Get all books
	
	public ArrayList<Book> getBooks(String bkId);
	
//Update book data
	
	public boolean updateBook(Book book);
	
//Delete book 
	
	public boolean deleteBook(String bkId);
	
}
