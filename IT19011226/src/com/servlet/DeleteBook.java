package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.BookServiceImpl;
import com.service.IntBookService;
/**
 * Servlet implementation class DeleteBook
 */
@WebServlet("/DeleteBook")
public class DeleteBook extends HttpServlet {
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean result;
		
		//get item id to delete
		String ID = request.getParameter("HiddenBookID");
		
		//Add details to database
		IntBookService bookDelete = new BookServiceImpl();
		result = bookDelete.deleteBook(ID);
		
		//set alert message to display according to the result
			if(result == true)
			{
			request.setAttribute("Message","Item Details Deleted Successfully");
			}
			else
			{
			request.setAttribute("Message","Error:Can't Delete Item Detalis");
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("ViewBook.jsp");
			dis.forward(request, response);
	}
	
}


