package com.osmsoop.servlets;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.osmsoop.service.ExamService;

public class AddExamServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ClassSec = request.getParameter("Class");
		String Section = request.getParameter("Section");
		String Exam = request.getParameter("Exam");
		String Date = request.getParameter("Date");
		String StartTime = request.getParameter("StartTime");
		String EndTime = request.getParameter("EndTime");

		boolean isTrue;
		isTrue = ExamService.insertExamDetails(ClassSec, Section, Exam, Date, StartTime, EndTime);

		if (isTrue == true) {
			response.sendRedirect("adminDash.jsp");

		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("AddExam.jsp");
			dispatcher.forward(request, response);
		}

	}

}
