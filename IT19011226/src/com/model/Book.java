package com.model;

public class Book {

	//Attributes
	private int bkId;
	private String title;
	private String edition;
	private String author;
	private int copies;
	private String remarks;
	
	//getters and setters
	
	public void setBookId(int id) {
		this.bkId = id;
	}
	
	public int getBookId() {
		return this.bkId;
	}
	
	public void setBookTitle(String title) {
		this.title = title;
	}
	
	public String getBookTitle() {
		return this.title;
	}
	
	public void setBookEdition(String edition) {
		this.edition = edition;
	}
	
	public String getBookEdition() {
		return this.edition;
	}
	
	public void setBookAuthor(String author) {
		this.author = author;
	}
	
	public String getBookAuthor() {
		return this.author;
	}
	
	public void setBookCopies(int copies) {
		this.copies = copies;
	}
	
	public int getBookCopies() {
		return this.copies;
	}
	
	public void setBookRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	public String getBookRemarks() {
		return this.remarks;
	}
}
