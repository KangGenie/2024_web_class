<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>
<%@  page import="java.util.*" %>
<%@ page import="day4.MyMusic" %>
<%
String driver = "oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:testdb";
String user="scott";
String password="tiger";


String title = request.getParameter("title");
//session이름이 musicList인 list가져옴
ArrayList<MyMusic> list = (ArrayList<MyMusic>)session.getAttribute("musicList");
//저장된 session이 없을 경우 list 배열 생성
if(list == null){
	list = new ArrayList<MyMusic>();
}
MyMusic music;

try {
	//1.드라이버 로드(객체 생성)
	Class.forName(driver);
	
	//2. 데이터베이스 연결
	Connection con = DriverManager.getConnection(url, user, password);
	
	//3. 문장 얻어오기
	String sql = "select so.title, si.singer, a.album from singer si";
	sql += " join song so";
	sql += " on si.singer_id = so.singer";
	sql += " join album a";
	sql += " on a.singer = si.singer_id and a.album_id=so.album where so.title=?";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, title);
	ResultSet rs = pst.executeQuery();
	
	rs.next();
	//MyMusic 인스턴스 생성 후 list에 추가
	music = new MyMusic(rs.getString(1),rs.getString(2),rs.getString(3));
	list.add(music);
	//session 저장(값을 저장시키는 역할)
	session.setAttribute("musicList", list);
	
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
out.println("<script>alert('재생목록에 추가되었습니다.');</script>");
out.println("<script>location.href='playList.jsp'</script>");
	
%>