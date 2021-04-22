package Log.student;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Insertstudentservelt")
public class Insertstudentservelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phone");
		String password =  request.getParameter("pwd");
		String address = request.getParameter("address");
		String age = request.getParameter("age");
		
		boolean isTrue;
		
		isTrue = StudentDButill.insertstudent(fname, lname, email, phonenumber, password,address,age);
		
		//check my data base connection is success and all data inserted to DB and navigate it in to another web page
		if(isTrue == true ) {
			
			RequestDispatcher display1 = request.getRequestDispatcher("DBsuccess.jsp");
			display1.forward(request, response);
			
		}
		else {
			
			RequestDispatcher display2 = request.getRequestDispatcher("DBunsuccess.jsp");
			display2.forward(request, response);
		}
		
	}

}
