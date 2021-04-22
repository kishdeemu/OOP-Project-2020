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
 * Servlet implementation class GetUpdateHomework
 */
@WebServlet("/GetUpdateHomework")
public class GetUpdateHomework extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetUpdateHomework() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Assign passed id
		String ID = request.getParameter("HiddenHwID");
		
		//getting data by id
		IntHomeworkService getuphw = new HomeworkServiceImpl();
		ArrayList<Homework> Hwdata = getuphw.getHomework(ID); 
		
		//send homework details to hw update page
		request.setAttribute("Homeworkdata",Hwdata);
		RequestDispatcher req = request.getRequestDispatcher("/UpdateHW.jsp");
		req.forward(request, response);
		
	}

}
