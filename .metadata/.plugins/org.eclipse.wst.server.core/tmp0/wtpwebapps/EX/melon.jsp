<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@font-face {
    font-family: 'omyu_pretty';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'like';
    src: url(like_ddangddang.ttf) format('truetype');
    font-weight: normal;
    font-style: normal;
}
body{
font-family: 'omyu_pretty';
background-image: url(heart.png);
}
.wrap{
border:1px solid pink;
width:500px;
margin:0 auto;
text-align: center;
background-color: #ffff;
}
header > img {
margin-top:10px;
margin-bottom:10px;
}
table{
border: 1px dashed pink;
width:100%;
border-collapse:collapse;
}
.head{
background-color: pink;
color: white;
}
td{
border: 1px dashed pink;
}
.grey{
color: #888888;
}
.player{
background-color: pink;
display: flex;
justify-content: center;
}
.player > div {
display:flex;
}
.player > div:nth-child(1), .player > div:nth-child(2){
margin-right: 5px;
}
.ion--play-back {
  display: inline-block;
  width: 1em;
  height: 1em;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3Cpath fill='white' d='m30.71 229.47l188.87-113a30.54 30.54 0 0 1 31.09-.39a33.74 33.74 0 0 1 16.76 29.47v79.05l180.72-108.16a30.54 30.54 0 0 1 31.09-.39A33.74 33.74 0 0 1 496 145.52v221A33.73 33.73 0 0 1 479.24 396a30.54 30.54 0 0 1-31.09-.39L267.43 287.4v79.08A33.73 33.73 0 0 1 250.67 396a30.54 30.54 0 0 1-31.09-.39l-188.87-113a31.27 31.27 0 0 1 0-53Z'/%3E%3C/svg%3E");
}
.ion--pause {
  display: inline-block;
  width: 1em;
  height: 1em;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3Cpath fill='white' d='M208 432h-48a16 16 0 0 1-16-16V96a16 16 0 0 1 16-16h48a16 16 0 0 1 16 16v320a16 16 0 0 1-16 16m144 0h-48a16 16 0 0 1-16-16V96a16 16 0 0 1 16-16h48a16 16 0 0 1 16 16v320a16 16 0 0 1-16 16'/%3E%3C/svg%3E");
}
.ion--play-forward {
  display: inline-block;
  width: 1em;
  height: 1em;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3Cpath fill='white' d='m481.29 229.47l-188.87-113a30.54 30.54 0 0 0-31.09-.39a33.74 33.74 0 0 0-16.76 29.47v79.05L63.85 116.44a30.54 30.54 0 0 0-31.09-.39A33.74 33.74 0 0 0 16 145.52v221A33.74 33.74 0 0 0 32.76 396a30.54 30.54 0 0 0 31.09-.39L244.57 287.4v79.08A33.74 33.74 0 0 0 261.33 396a30.54 30.54 0 0 0 31.09-.39l188.87-113a31.27 31.27 0 0 0 0-53Z'/%3E%3C/svg%3E");
}
.ion--close {
  display: inline-block;
  width: 1em;
  height: 1em;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3Cpath fill='%23888888' d='m289.94 256l95-95A24 24 0 0 0 351 127l-95 95l-95-95a24 24 0 0 0-34 34l95 95l-95 95a24 24 0 1 0 34 34l95-95l95 95a24 24 0 0 0 34-34Z'/%3E%3C/svg%3E");
}
.grey a{
display: flex;
justify-content: center;
}
</style>
</head>
<body>
<div class="wrap">
	<header><img src="1.gif" /></header>
	<section>
		<table>
			<tr class="head">
				<td>No</td>
				<td>곡명</td>
				<td>아티스트</td>
				<td>앨범</td>
				<td>삭제</td>
			</tr>
<%
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:testdb";
String user = "scott";
String password = "tiger";	

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
	sql += " on a.singer = si.singer_id";
	sql += " and a.album_id=so.album";
	
	PreparedStatement pst = con.prepareStatement(sql);
	
	//5. 실행(executeQuery()-조회, executeUpdate()-나머지 등록, 변경, 삭제)
	ResultSet rs = pst.executeQuery();
	
	//
	int cnt=1;
	while(rs.next()) {
%>	
		<tr class="grey">
		<td><%=cnt %></td>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><a href="deleteSong.jsp?title=<%=rs.getString(1)%>"><span class="ion--close"></span></a></td>
		</tr>
<%
	cnt++;
	}
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>
		</table>
	</section>
	<section class="player">
		<div><span class="ion--play-back"></span></div>
		<div><span class="ion--pause"></span></div>
		<div><span class="ion--play-forward"></span></div>
	</section>
</div>
</body>
</html>