package in.suriya.servlet.staff;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.suriya.service.staff.AddAndDeleteStudentDetailsService;

/**
 * Servlet implementation class AddStudentDetailsServlet
 */
@WebServlet("/AddStudentDetailsServlet")
public class AddStudentDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			long rollNo=Long.parseLong(request.getParameter("rollNo"));
			long mobNo=Long.parseLong(request.getParameter("mobileNo"));
			int fee=Integer.parseInt(request.getParameter("fee"));
			
            
			boolean valid=AddAndDeleteStudentDetailsService.addStudentDetails(rollNo, mobNo, fee);
		
			 if (valid) {
				  String message = "Student Entry Added Sucessfully";
				  response.sendRedirect("staffoperation.jsp?infoMessage=" + message);
			  }else {
				  String message = "Already Exist";
				  response.sendRedirect("addstudentdetails.jsp?infoMessage=" + message);
				  }
			
			
			
		}catch(Exception e) {
			String message = e.getMessage();
			  response.sendRedirect("addstudentdetails.jsp?infoMessage=" + message);
		}
		
	
	
	
	}

	

}
