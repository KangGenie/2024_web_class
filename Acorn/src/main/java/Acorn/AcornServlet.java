package Acorn;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AcornServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AcornService service = new AcornService();
		ArrayList<Acorn> list =  service.getMembers();
		
		//모델
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("WEB-INF/views/acornlist.jsp").forward(request, response);
	}

}
