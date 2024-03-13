<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String[] imgs = {"b.jpg","b_2.jpg","b_3.jpg"	};

// 0  1   2
	int randomIndex = (int)( Math.random()*3);

	String rImg = imgs[randomIndex];
%>

<img src="../<%=rImg%>">
</body>
</html>