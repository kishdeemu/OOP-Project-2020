package Log.student;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdatestudentServlet")
public class UpdatestudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("S_id");
		String firstname = request.getParameter("S_F_Name");
		String lastname = request.getParameter("S_L_Name");
		String email = request.getParameter("S_Email");
		String contactnum = request.getParameter("S_Contact");
		String age = request.getParameter("S_Age");
		String address = request.getParameter("S_Address");
		String password = request.getParameter("S_Pwd");
		
		boolean isTrue;
		
		isTrue = StudentDButill.updatestudent( id, firstname, lastname, email, contactnum, password, address, age);
		
		if(isTrue == true) {
			
			List<Student> stdDetails = StudentDButill.getStudentDetails(id);
			request.setAttribute("studentDetails", stdDetails);
				
			RequestDispatcher RDis = request.getRequestDispatcher("StudentAccount.jsp");
			RDis.forward(request, response);
		}
		else {
			
			List<Student> stdDetails = StudentDButill.getStudentDetails(id);
			request.setAttribute("studentDetails", stdDetails);
								
			RequestDispatcher RDis = request.getRequestDispatcher("StudentAccount.jsp");
			RDis.forward(request, response);
					
		}	
	}
}
