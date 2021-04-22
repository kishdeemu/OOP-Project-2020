package com.teacher.servlet;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class UpdateHomework
 */
@WebServlet("/UpdateHomework")
public class UpdateHomework extends HttpServlet {

       

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		boolean checker;
		String msg = null;
		try {
		//creating object of homework class
		Homework HW = new Homework();
		
		//Adding values to attributes from user input
		String id = request.getParameter("HiddenId");
		HW.setHWID(id);
		HW.setGrade(request.getParameter("grade"));
		HW.setSubject(request.getParameter("subject"));
		HW.setDescription(request.getParameter("description"));
		HW.setDuedate(request.getParameter("dudate"));
		
		//Adding to DB
		
		IntHomeworkService uphw = new HomeworkServiceImpl();
		checker = uphw.updateHomework(HW); 
		
		//get service 
		IntHomeworkService hwservice = new HomeworkServiceImpl();
		ArrayList<Homework> hwdata = hwservice.getHomework(request.getParameter("HiddenId"));
		
		//Checking errors
		if(checker == true) {
			msg = "Data Update Success";
			response.sendRedirect("ViewHW.jsp");
			
		}
		else {
			msg = "Data Update Failed";
			request.setAttribute("Message", msg);
			request.setAttribute("Bookdetails",hwdata);
			RequestDispatcher dispatch1 = request.getRequestDispatcher("UpdateHW.jsp");
			dispatch1.forward(request, response);
		}
		
		
		}catch(Exception e) {
			e.printStackTrace();
			
		}

	}
}
