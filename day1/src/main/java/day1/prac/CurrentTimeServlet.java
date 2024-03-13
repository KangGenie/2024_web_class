package day1.prac;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CurrentTimeServlet")
public class CurrentTimeServlet extends HttpServlet {
    

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        // 현재 시간을 가져오기
        Date currentTime = new Date();
       
        // 날짜 형식 지정을 위한 SimpleDateFormat 객체 생성
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        // 응답의 Content Type과 문자 인코딩 설정
        response.setContentType("text/html;charset=UTF-8");

        // PrintWriter를 사용하여 현재 시간을 클라이언트에게 응답으로 전송
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Current Time Servlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Current Time</h1>");
        out.println("<p>현재 시간: " + dateFormat.format(currentTime) + "</p>");
        out.println("</body>");
        out.println("</html>");
    }
}