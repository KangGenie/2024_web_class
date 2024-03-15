package day7;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/acornlist_")
public class AcornServlet extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//데이터 만들기
		//Model-> service, DAO
		AcornService Service  = new AcornService();
		ArrayList<Acorn> list = service.getMemberListReal();
		System.out.println(list.get(0).getId());
		
		//모델 심기(request 저장소 : 하나의 요청에서 응답될 때까지 유효한 저장소)
		request.setAttribute("list", list);
		
		request.getRequestDispathcer("WEB-INF/views/list.jsp")
	}
}
