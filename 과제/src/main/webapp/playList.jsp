<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
::-webkit-scrollbar {
	width: 14px
}

::-webkit-scrollbar:horizontal {
	height: 17px
}

::-webkit-scrollbar-corner {
	background: #eee
}

::-webkit-scrollbar-track:vertical {
	background: linear-gradient(90deg, #e5e5e5, #f0f0f0 20%)
}

::-webkit-scrollbar-track:horizontal {
	background: linear-gradient(180deg, #e5e5e5, #f0f0f0 20%)
}

::-webkit-scrollbar-thumb {
	border: 1.5px solid #888;
	border-radius: 3px;
	box-shadow: inset 0 -1px 1px #fff, inset 0 1px 1px #fff;
	background-color: #eee;
}

::-webkit-scrollbar-thumb:vertical {
	background:
		url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAkAAAAKCAIAAADpZ+PpAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAEnQAABJ0Ad5mH3gAAADrSURBVChTTc5LboJQGAXguyoCu4ERCzAGlRk7UOwGWIDh0s4M4kxb06RSq/jAB6AxJkJ4lTDrue3AnvyzP+fLId+/yfM8juP7PQmCCOf7B3e+ZD+O40RRVFW12VQUpd3r9U3T2m4OpKoqWZYNwzBZLEqfh0N7NnvfrPcEWlEUWZb9mWF4Ph6D0ylcLbfM5HkeJrhGA2hb15/QXnv+w7RYXsDatjOdvnmrHSnLEizMNE2v11sUXQBCnn98kbquBUGQJAlmq9WB2e3qg4HJdqKkaRql1HGc0WgMcDJ5dd0F24kediZJ8t/ELT69H+8py0CYSIO5AAAAAElFTkSuQmCC")
		no-repeat 50%, linear-gradient(90deg, #eee 45%, #ddd 0, #bbb)
}

::-webkit-scrollbar-thumb:horizontal {
	background:
		url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAJCAYAAAALpr0TAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAEnQAABJ0Ad5mH3gAAADcSURBVChTNZBLqoUwEEQrURQUxZGCvy24ACfiityJi7tv8GauQoPxk5tquA2RQ9vVVYk6z9NZaxFFEe77htYazjk8z4MwDIVZ+rourOuKaZrwvi+WZcE8z1BKCbPPCjk4DAO2bRP1OI7wLiL6Mbd7J408z1GWpQwWRYGqqiQG+03TgMu0MacfUN4qANmn8UOv9MjW3sKaSm7iIdOSlziOQ3LScd93aPonSYK6riVLlmVo21aYfVqzND9pmqLrOlGT+76XbcxLZkb19/l3fEP+oF0cx8KMEASBsDEGX2/CgZCHkg+8AAAAAElFTkSuQmCC")
		no-repeat 50%, linear-gradient(180deg, #eee 45%, #ddd 0, #bbb)
}

::-webkit-scrollbar-button:vertical:decrement {
	background-image: url(https://i.imgur.com/ZF6PC55.png);
	width: 15px;
	height: 15px;
}

::-webkit-scrollbar-button:vertical:increment {
	background-image: url(https://i.imgur.com/sMOMkQ7.png);
	width: 15px;
	height: 15px;
}

@font-face {
	font-family: 'omyu_pretty';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2304-01@1.0/omyu_pretty.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: 'omyu_pretty';
	background-image: url(4.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

.wrap {
	width: 500px;
	margin: 0 auto;
	text-align: center;
	margin-top: 100px;
}

header>img {
	margin-top: 10px;
	margin-bottom: 10px;
}

section {
	background-color: #ffff;
}

table {
	width: 100%;
	border-collapse: collapse;
	background-color: #ffff;
}

.head {
	background: linear-gradient(#b2b2b2, #ececec);
	color: white;
	position: sticky;
	top: 0;
}

.body {
	height: 200px;
	border: 1px solid;
	overflow-y: scroll;
}

td {
	border: 1px solid #bdbdbd;
	border-top: 0;
}

.grey {
	color: #888888;
}

.player {
	background: linear-gradient(#b2b2b2, #ececec);
	padding: 5px;
}

.frm {
	display: flex;
}

.search, .input_area {
	font-family: 'omyu_pretty';
}

.selectBox {
	width: 15%;
	position: relative;
}

.search {
	width: 100%;
	height: 20px;
	border: none;
	border-right: 1px solid #bdbdbd;
	padding-left: 7px;
	appearance: none;
	border-top-left-radius: 10px;
	border-bottom-left-radius: 10px;
}

.search:focus, .input_area:focus, .btn:focus {
	outline: none;
}

.input_area {
	width: 81%;
	border: none;
	padding-left: 5px;
}

.btn {
	width: 4%;
	border: none;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
	display: flex;
	background: white;
	padding: 0px;
	justify-content: flex-end;
}

.ion--play-back {
	display: inline-block;
	width: 1em;
	height: 1em;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-image:
		url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3Cpath fill='white' d='m30.71 229.47l188.87-113a30.54 30.54 0 0 1 31.09-.39a33.74 33.74 0 0 1 16.76 29.47v79.05l180.72-108.16a30.54 30.54 0 0 1 31.09-.39A33.74 33.74 0 0 1 496 145.52v221A33.73 33.73 0 0 1 479.24 396a30.54 30.54 0 0 1-31.09-.39L267.43 287.4v79.08A33.73 33.73 0 0 1 250.67 396a30.54 30.54 0 0 1-31.09-.39l-188.87-113a31.27 31.27 0 0 1 0-53Z'/%3E%3C/svg%3E");
}

.ion--pause {
	display: inline-block;
	width: 1em;
	height: 1em;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-image:
		url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3Cpath fill='white' d='M208 432h-48a16 16 0 0 1-16-16V96a16 16 0 0 1 16-16h48a16 16 0 0 1 16 16v320a16 16 0 0 1-16 16m144 0h-48a16 16 0 0 1-16-16V96a16 16 0 0 1 16-16h48a16 16 0 0 1 16 16v320a16 16 0 0 1-16 16'/%3E%3C/svg%3E");
}

.ion--play-forward {
	display: inline-block;
	width: 1em;
	height: 1em;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-image:
		url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 512 512'%3E%3Cpath fill='white' d='m481.29 229.47l-188.87-113a30.54 30.54 0 0 0-31.09-.39a33.74 33.74 0 0 0-16.76 29.47v79.05L63.85 116.44a30.54 30.54 0 0 0-31.09-.39A33.74 33.74 0 0 0 16 145.52v221A33.74 33.74 0 0 0 32.76 396a30.54 30.54 0 0 0 31.09-.39L244.57 287.4v79.08A33.74 33.74 0 0 0 261.33 396a30.54 30.54 0 0 0 31.09-.39l188.87-113a31.27 31.27 0 0 0 0-53Z'/%3E%3C/svg%3E");
}

.heroicons-outline--plus-sm {
	display: inline-block;
	width: 1em;
	height: 1em;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-image:
		url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24'%3E%3Cpath fill='none' stroke='%23888888' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M12 6v6m0 0v6m0-6h6m-6 0H6'/%3E%3C/svg%3E");
}

.f7--search-circle-fill {
	display: inline-block;
	width: 1.5em;
	height: 1.5em;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-image:
		url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 56 56'%3E%3Cpath fill='%23888888' d='M28 51.906c13.055 0 23.906-10.828 23.906-23.906c0-13.055-10.875-23.906-23.93-23.906C14.899 4.094 4.095 14.945 4.095 28c0 13.078 10.828 23.906 23.906 23.906M16.539 25.398c0-4.945 4.055-9 9.023-9c4.946 0 9 4.055 9 9a8.755 8.755 0 0 1-1.664 5.18l5.86 5.86c.328.328.539.773.539 1.218c0 .985-.68 1.664-1.594 1.664c-.539 0-.984-.164-1.43-.61l-5.789-5.788a8.9 8.9 0 0 1-4.922 1.5c-4.968 0-9.023-4.055-9.023-9.024m2.601 0c0 3.516 2.907 6.422 6.422 6.422c3.47 0 6.375-2.906 6.375-6.422c0-3.468-2.906-6.375-6.375-6.375c-3.515 0-6.422 2.907-6.422 6.375'/%3E%3C/svg%3E");
}

.icon-park--down {
	position: absolute;
	right: 2px;
	top: 2px;
	display: inline-block;
	width: 1em;
	height: 1em;
	background-repeat: no-repeat;
	background-size: 100% 100%;
	background-image:
		url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 48 48'%3E%3Cpath fill='none' stroke='%23bdbdbd' stroke-linecap='round' stroke-linejoin='round' stroke-width='4' d='M36 18L24 30L12 18'/%3E%3C/svg%3E");
}

.grey a {
	display: flex;
	justify-content: center;
}

ul {
	padding: 0;
	margin: 0;
	list-style: none;
	justify-content: flex-end;
	display: flex;
}

ul li {
	width: 60px;
	height: 23px;
	background: linear-gradient(#b2b2b2, #ececec, #b2b2b2);
	margin-left: 10px;
	line-height: 23px;
	margin-bottom: 20px;
	color: white;
	border: 1px solid black;
	text-shadow: 1px 1px 0px #fff,0 0 0 #000;
}

ul li a {
	color: #888888;
	text-decoration: none;
}
</style>
</head>
<body>
<div class="wrap">
	<nav>
		<ul>
			<li><a href="playList.jsp">홈</a></li>
			<li><a href="myPlayList.jsp">마이뮤직</a></li>
		</ul>
	</nav>
	<section class="body">
		<table>
			<tr class="head">
				<td>No</td>
				<td>곡명</td>
				<td>아티스트</td>
				<td>앨범</td>
				<td>담기</td>
			</tr>
<%
String driver = "oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:testdb";
String user="scott";
String password="tiger";
request.setCharacterEncoding("utf-8");

Connection con = null;
ResultSet rs = null;
PreparedStatement pst = null;


String kind = request.getParameter("kind");
String search = request.getParameter("search");
if(search == null){
	search = "";
}
if(kind == null){
	kind = "";
}



try {
	//1.드라이버 로드(객체 생성)
	Class.forName(driver);
	
	//2. 데이터베이스 연결
	con = DriverManager.getConnection(url, user, password);
	
	String sql = "select so.title, si.singer, a.album from singer si";
	sql += " join song so";
	sql += " on si.singer_id = so.singer";
	sql += " join album a";
	sql += " on a.singer = si.singer_id and a.album_id=so.album";
	
	//select 박스를 '곡'으로 두고 검색창에 값을 입력한 경우 where절 추가
	if(kind.equals("title") && !search.equals("")){
		sql += " where lower(so.title) like lower(?)";
	}else if(kind.equals("singer")|| !search.equals("")){ //select 박스를 '가수'로 두고 검색창에 값을 입력한 경우 where절 추가
		sql += " where lower(si.singer) like lower(?)";
	}
	pst = con.prepareStatement(sql);
	if(!"".equals(search)){
		pst.setString(1, "%"+search+"%");
	}
	rs = pst.executeQuery();
	
	if(!(rs.next())){
%>
		<td colspan="5" style="border:none;">검색 결과가 없습니다.</td>
<% 
	}else{
		int cnt=1;
		do{%>
		<tr class="grey">
		<td><%=cnt %></td>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><a href="myMusic.jsp?title=<%=rs.getString(1)%>"><span class="heroicons-outline--plus-sm"></span></a></td>
		</tr>
		<% 	
		cnt++;
		}while(rs.next());
	}
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}finally{
    	if(rs != null) rs.close();
        if(pst != null) pst.close(); 
        if(con != null) con.close();

}

%>
		</table>
	</section>
	<section class="player">
			<form class="frm" name="frm" action="playList.jsp" method="post"
				onsubmit="return check()">
				<div class="selectBox">
				<select class="search" name="kind">
					<option value="title" <% if(kind.equals("title")){%>selected="selected"<%}%>>곡</option>
					<option value="singer" <% if(kind.equals("singer")){%>selected="selected"<%}%>>가수</option>
				</select><span class="icon-park--down"></span></div><input class="input_area" type="text" name="search" value="<%=search%>"><button class="btn"><span class="f7--search-circle-fill"></span></button>
			</form>
		</section>
</div>
</body>
</html>