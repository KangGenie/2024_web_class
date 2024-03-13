package day1.prac;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/stars")
public class StarsServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");

        PrintWriter out = response.getWriter();

        // 클라이언트가 보낸 수 정보 얻어오기
        String su_ = request.getParameter("su");
        int su = Integer.parseInt(su_);

        // 수에 따라 별 출력하기
        for (int i = 1; i <= su; i++) {
            for (int j = 0; j < i; j++) {
                out.print("*");
            }
            out.println(); // 한 줄 끝날 때마다 줄바꿈
        }

        out.close();
    }
}