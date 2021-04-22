package com.teacher.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.teacher.model.Teacher;
import com.teacher.service.TeacherServiceImpl;
/**
 * Servlet implementation class TeacherLogin
 */
@WebServlet("/TeacherLogin")
public class TeacherLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherLogin() {
        super();
        // TODO Auto-generated constructor stub
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
		ArrayList<Teacher> list = TeacherServiceImpl.LoginDetails(uname,pwd);
		request.setAttribute("TeacherProfile", list);
		
		if(list.size() > 0)
		{
		//create session
		HttpSession session = request.getSession();
		session.setAttribute("username", uname);
		
		//pass librarian details to Home
		RequestDispatcher dis = request.getRequestDispatcher("TeacherHome.jsp");
		dis.forward(request, response);
		}
		
		else
		{
		response.sendRedirect("TeacherLogin.jsp");
		}
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();	
		}
	}

}
