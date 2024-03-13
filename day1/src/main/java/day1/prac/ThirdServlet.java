package day1.prac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//hap => 55
//third?su=2
//사용자가 수 정보를 보내면 1~수까지의 합을 구해서 반환하기


@WebServlet("/third")
public class ThirdServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		//
		// 클라이언트가 보낸 수 정보 얻어오기
		
		String su_ = request.getParameter("su"); //su=10
		int su = Integer.parseInt(su_); 		//"10" = 10
		
		//su가 5였다면
		//		1  2  3  4  5
		
		int sum =0;
		for(int i=1; i<=su; i++) {
			sum +=i;
		}
		
		out.println("~~~~"+sum);
		out.println("<img src=\"day1/a.jpg\" />");
		out.close();
	}

}
