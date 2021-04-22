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
 * Servlet implementation class DoUpdateBook
 */
@WebServlet("/DoUpdateBook")
public class DoUpdateBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoUpdateBook() {
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
		//Assign passed id value to a variable
		String bookID = request.getParameter("HiddenBookID");
		
		//get book details by bkID
		IntBookService Bookservice = new BookServiceImpl();
		ArrayList<Book> Bookdetails = Bookservice.getBooks(bookID);
		

		//send book details to update page
		request.setAttribute("Bookdetails",Bookdetails);
		RequestDispatcher req = request.getRequestDispatcher("/UpdateBook.jsp");
		req.forward(request, response);
	}

}
