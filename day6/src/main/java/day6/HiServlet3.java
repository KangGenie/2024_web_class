package day6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/emo")
public class HiServlet3 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		
		//자바에서 값을 받아왔다.
		HiService2 service2 = new HiService2();
		String msg = service2.emotion();
		
		//
		request.setAttribute("msg", msg);
		
		//
		request.getRequestDispatcher("WEB-INF/views/hellomsg.jsp").forward(request, response);
	}
}
