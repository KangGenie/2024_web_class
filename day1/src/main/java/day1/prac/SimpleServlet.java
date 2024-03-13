package day1.prac;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SimpleServlet")
public class SimpleServlet extends HttpServlet {
    

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
    	//한글을 클라이언트가 읽을 수 있게 인코딩해줌
    	response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
        //객체를 생성하고, 만든 html을 클라이언트에 내보냄
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Simple Servlet HTML</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Hello Servlet!</h1>");
        out.println("<p>간단한 서블릿!</p>");
        out.println("</body>");
        out.println("</html>");
       
    }
}