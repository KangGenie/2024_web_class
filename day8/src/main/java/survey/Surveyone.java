package survey;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/survey1")
public class Surveyone  extends HttpServlet{
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
	request.setCharacterEncoding("UTF-8");
	
	request.getRequestDispatcher("WEB-INF/views/survey1.jsp").forward(request, response);
	
}
	
}
