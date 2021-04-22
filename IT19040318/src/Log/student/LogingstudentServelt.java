package Log.student;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LogingstudentServelt")
public class LogingstudentServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		//catch the fname and password come from studentlogin.jsp
		String firstname = request.getParameter("F_name");
		String password = request.getParameter("pass");
		
		
		try {
		//call the method we create in studentDButill(validate)
		//accsess given by it class name becz it is static
		List<Student> stdDetails =StudentDButill.validate(firstname, password);	
		request.setAttribute("studentDetails", stdDetails);
		
		}
		catch(Exception e){
			e.printStackTrace();		
		}
		
		RequestDispatcher RDis =request.getRequestDispatcher("StudentAccount.jsp");	
		RDis.forward(request,response);
		
	}

}
