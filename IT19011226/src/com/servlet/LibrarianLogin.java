package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Librarian;
import com.service.LibrarianServiceImpl;

/**
 * Servlet implementation class LibrarianLogin
 */

//@WebServlet("/AdminLogin")
public class LibrarianLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LibrarianLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String uname = null;
		String pwd = null; 
		
		uname = request.getParameter("username");
		pwd = request.getParameter("password");
		
		try
		{
		ArrayList<Librarian> list = LibrarianServiceImpl.LoginDetails(uname,pwd);
		request.setAttribute("AdminProfile", list);
		
		if(list.size() > 0)
		{
		//create session
		HttpSession session = request.getSession();
		session.setAttribute("username", uname);
		
		//pass librarian details to Home
		RequestDispatcher dis = request.getRequestDispatcher("LibrarianHome.jsp");
		dis.forward(request, response);
		}
		
		else
		{
		response.sendRedirect("LibrarianLogin.jsp");
		}
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();	
		}
		
	}

}
