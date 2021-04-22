package com.osmsoop.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.osmsoop.service.loginDAO;

public class LogAdminServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Uname = request.getParameter("Uname");
		String Pwd = request.getParameter("Pwd");

		loginDAO logdao = new loginDAO();

		if (logdao.check(Uname, Pwd)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", Uname);
			response.sendRedirect("adminDash.jsp");
		} else {
			request.setAttribute("errorMsg", "Invalid Credentials.");
			RequestDispatcher rd = request.getRequestDispatcher("admin-login.jsp");
			rd.forward(request, response);

		}

	}

}
