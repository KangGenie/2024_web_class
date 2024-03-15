<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>당신이 좋아하는 가수와 노래는?</h2>
<%  String singer = (String) session.getAttribute("singer");
	String song = (String)session.getAttribute("song");
%>
가수는<%=singer %>
노래는<%=song %>
입니다.
</body>
</html>