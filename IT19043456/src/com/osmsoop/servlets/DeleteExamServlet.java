package com.osmsoop.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.osmsoop.service.ExamService;

public class DeleteExamServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		boolean isTrue;

		isTrue = ExamService.deleteExamDetails(id);

		if (isTrue == true) {
			response.sendRedirect("adminDash.jsp");
		} else {
			response.sendRedirect("adminDash.jsp");
		}

	}

}
