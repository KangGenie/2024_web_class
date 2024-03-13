package day1.prac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hi") //맵핑
public class EX01 extends HttpServlet{
	
	@Override //매서드 오버라이딩
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
							// 클라이언트가 입력한 값 저장하는 객체, 응답하는 객체
		PrintWriter out = resp.getWriter();
		out.println(">_<");
		
	}

}
