package day1.prac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1.서블릿 작성
//2.서블릿 등록
//3.톰캣 실행될 때 내가 만든 서블릿이 동잘될 수 있다. (서블릿을 실행시킬 때 약속된 매서드 : service)
//1~10까지 합을 제공하기
@WebServlet("/hap")
public class SecondServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//1~10까지의 합
		int sum =0;
		for(int i=1; i<=10; i++) {
			sum += i;
		}
		//합계 응답하기
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>"+sum+"</h2>");
		out.println("</body>");
		out.println("</html>");
	}
}
