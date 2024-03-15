package survey;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/survey2")
public class SurveyTwo extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String singer =request.getParameter("singer");
		
		//session
		HttpSession session = request.getSession();
		request.setAttribute("singer", singer);
		
		request.getRequestDispatcher("WEB-INF/views/survey2.jsp").forward(request, response);
	}

}
