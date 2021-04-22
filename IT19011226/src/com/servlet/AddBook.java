package com.servlet;

import java.io.IOException;

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
 * Servlet implementation class AddBook
 */
@WebServlet("/AddBook")
public class AddBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

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
			book.setBookId(Integer.parseInt(request.getParameter("id")));
			book.setBookTitle(request.getParameter("title"));
			book.setBookEdition(request.getParameter("edition"));
			book.setBookAuthor(request.getParameter("author"));
			book.setBookCopies(Integer.parseInt(request.getParameter("copies")));
			book.setBookRemarks(request.getParameter("remarks"));
			
			//Adding to DB
			
			IntBookService bookadd = new BookServiceImpl();
			checker = bookadd.addBook(book);
			
			//Checking errors
			if(checker == true) {
				msg = "Data insertion Success";
				response.sendRedirect("LibrarianHome.jsp");
				
			}
			else {
				msg = "Data insertion Failed";
				request.setAttribute("Message", msg);
				RequestDispatcher dispatch1 = request.getRequestDispatcher("AddBook.jsp");
				dispatch1.forward(request, response);
			}
		}
		catch(NumberFormatException e1)
		{
		msg = "Error in Data type.Please input valid details";
		request.setAttribute("Message", msg);
		RequestDispatcher dispatch2 = request.getRequestDispatcher("AddBook.jsp");
		dispatch2.forward(request, response);
		}
		catch(Exception e2)
		{
		msg = "Exception Occoured.";
		request.setAttribute("Message", msg);
		RequestDispatcher dispatch3 = request.getRequestDispatcher("AddBook.jsp");
		dispatch3.forward(request, response);
		}
	}

}
