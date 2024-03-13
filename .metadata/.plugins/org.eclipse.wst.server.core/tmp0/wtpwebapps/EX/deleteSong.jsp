<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>
<%
String driver = "oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:testdb";
String user="scott";
String password="tiger";
String title = request.getParameter("title");




try {
	//1.드라이버 로드(객체 생성)
	Class.forName(driver);
	
	//2. 데이터베이스 연결
	Connection con = DriverManager.getConnection(url, user, password);
	
	//3. 문장 얻어오기
	String sql = "delete from song where title=?";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, title);
	
	//5. 실행(executeQuery()-조회, executeUpdate()-나머지 등록, 변경, 삭제)
	int cnt = pst.executeUpdate();
	
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

//
response.sendRedirect("playList.jsp");

%>