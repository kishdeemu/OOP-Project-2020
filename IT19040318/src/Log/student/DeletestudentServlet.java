package Log.student;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeletestudentServlet")
public class DeletestudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id =request.getParameter("S_id");
		boolean isTrue;
		
		isTrue = StudentDButill.deletestudent(id);
		
		if(isTrue == true){
			
			RequestDispatcher RDis = request.getRequestDispatcher("StudentInsert.jsp");
			RDis.forward(request, response);	
			
		}
		else {
			
			List<Student> stdDetails  = StudentDButill.getStudentDetails(id);
			request.setAttribute("studentDetails", stdDetails);
			
			RequestDispatcher RDis = request.getRequestDispatcher("StudentAccount.jsp");
			RDis.forward(request, response);	
			
		}
		
			
		
		
	}

}
