package com.teacher.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.teacher.service.HomeworkServiceImpl;
import com.teacher.service.IntHomeworkService;

/**
 * Servlet implementation class DeleteHomework
 */
@WebServlet("/DeleteHomework")
public class DeleteHomework extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteHomework() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean result;
		
		//get homework id to delete
				String ID = request.getParameter("HiddenHwID");
		//Add data to delete
				IntHomeworkService deletehw = new HomeworkServiceImpl();
				result = deletehw.deleteHomework(ID);
				
				//alert
				if(result == true)
				{
				request.setAttribute("Message"," HomeWork Deleted Successfully");
				}
				else
				{
				request.setAttribute("Message","Error:Can't Delete HomeWork");
				}
				
				RequestDispatcher dis = request.getRequestDispatcher("ViewHW.jsp");
				dis.forward(request, response);
	}

}
