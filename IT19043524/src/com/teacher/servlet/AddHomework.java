package com.teacher.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.teacher.model.Homework;
import com.teacher.service.HomeworkServiceImpl;
import com.teacher.service.IntHomeworkService;

/**
 * Servlet implementation class AddHomework
 */
@WebServlet("/AddHomework")
public class AddHomework extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddHomework() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//Declaring Attributes
		boolean checker;
		String msg = null;		
		
		//creating object of hw class
		Homework HW = new Homework();
		
		//Adding values to attributes from user input
		HW.setHWID(request.getParameter("hwid"));
		HW.setGrade(request.getParameter("grade"));
		HW.setSubject(request.getParameter("subject"));
		HW.setDescription(request.getParameter("description"));
		HW.setDuedate(request.getParameter("dudate"));
		
		//Adding to DB
		
		IntHomeworkService addhw = new HomeworkServiceImpl();
		checker = addhw.addHomework(HW);
		
		
		//Checking errors
		if(checker == true) {
			msg = "Data insertion Success";
			response.sendRedirect("ViewHW.jsp");
			
		}
		else {
			msg = "Data insertion Failed";
			request.setAttribute("Message", msg);
			RequestDispatcher dispatch1 = request.getRequestDispatcher("AddHW.jsp");
			dispatch1.forward(request, response);
		}
	}

}
