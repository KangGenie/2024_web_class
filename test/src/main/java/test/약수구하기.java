package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import day2.MyUtils;

@WebServlet("/litest")
public class 약수구하기 extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		MyUtils u = new MyUtils();
		String result =u.getDivisor(20);
		String msg = u.getFightingMessage();
		
		PrintWriter out = response.getWriter();
		out.print(result);
		out.println(msg);
		out.close();
		
		
	}
	

}
