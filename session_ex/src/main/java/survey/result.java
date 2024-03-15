package survey;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/result")
public class result extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String song =request.getParameter("song");
			
			//세션
			HttpSession session = request.getSession();
			session.setAttribute("song", song);
			
			request.getRequestDispatcher("WEB-INF/views/result.jsp").forward(request, response);
			
	}	

}
