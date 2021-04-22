package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Book;
import com.service.BookServiceImpl;
import com.service.IntBookService;

/**
 * Servlet implementation class UpdateBook
 */
@WebServlet("/UpdateBook")
public class UpdateBook extends HttpServlet {
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//Declaring Attributes
		boolean checker;
		String msg = null;
	
		
		try {
			//creating object of book class
			Book book = new Book();
			
			//Adding values to attributes from user input
			int id = Integer.parseInt(request.getParameter("HiddenId"));
			book.setBookId(id);
			book.setBookTitle(request.getParameter("title"));
			book.setBookEdition(request.getParameter("edition"));
			book.setBookAuthor(request.getParameter("author"));
			book.setBookCopies(Integer.parseInt(request.getParameter("copies")));
			book.setBookRemarks(request.getParameter("remarks"));
			
			//Adding to DB
			
			IntBookService bookupdate = new BookServiceImpl();
			checker = bookupdate.updateBook(book);
			
			//get item details by ItemID
			IntBookService Bookservice = new BookServiceImpl();
			ArrayList<Book> Bookdetails = Bookservice.getBooks(request.getParameter("HiddenId"));
			
			//Checking errors
			if(checker == true) {
				msg = "Data insertion Success";
				response.sendRedirect("ViewBook.jsp");
				
			}
			else {
				msg = "Data insertion Failed";
				request.setAttribute("Message", msg);
				request.setAttribute("Bookdetails",Bookdetails);
				RequestDispatcher dispatch1 = request.getRequestDispatcher("UpdateBook.jsp");
				dispatch1.forward(request, response);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			//get item details by ItemID
			IntBookService Bookservice = new BookServiceImpl();
			ArrayList<Book> Bookdetails = Bookservice.getBooks(request.getParameter("HiddenIdD"));
			
			request.setAttribute("Bookdetails",Bookdetails);
			RequestDispatcher dispatch1 = request.getRequestDispatcher("UpdateBook.jsp");
			dispatch1.forward(request, response);
		}
		
		}
		

}



