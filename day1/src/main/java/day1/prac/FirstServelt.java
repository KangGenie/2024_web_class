package day1.prac;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿 작성
//서블릿 동작

//서블릿 작성(사용자 요청에 대한 응답정보를 동적으로 만들어 주는 기술)
//1.서블릿을 상속한다 HttpServlet
//2.service() 매서드를 오버라이드 한다.
//3. 응답내용을 작성한다
//4.톰캣(웹서버)에 내가 만든 서블릿을 등록한다.(url-mapping )

@WebServlet("/hi.do")
public class FirstServelt extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//응답내용을 작성한다.
		//응답하기 위해서 출력용 스트림을 얻어온다.
		//
		
		PrintWriter out = response.getWriter();
		
		out.println("hello servlet");
		System.out.println("hello servlet"); //3번
	}


}
