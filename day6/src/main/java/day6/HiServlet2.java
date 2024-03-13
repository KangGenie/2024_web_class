package day6;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hi2")
public class HiServlet2 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		
		//인사 메시지=>데이터
		//String msg= "hi Servlet"; =>별도의 service java로 분리
		HiService service = new HiService();
		String msg =service.gethello();
		
		//저장소로 사용하는 객체  request(서블릿, jsp(view)같이 공유하는 공간)
		request.setAttribute("msg", msg);
		
	
		//view(jsp) forword시킴,  view를 거쳐서 응답함
		request.getRequestDispatcher("WEB-INF/views/hellomsg.jsp").forward(request, response);		
		
		
		
		//출력 ==>별도의 jsp로 작성
		/*
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>"+msg+"<h2>");
		out.println("</body>");
		out.println("</html>");
		*/
		
	}
}