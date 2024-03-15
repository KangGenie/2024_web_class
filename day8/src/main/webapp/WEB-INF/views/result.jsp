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
String animal =(String)session.getAttribute("animal");
String flower =(String)session.getAttribute("flower");
%>

<h2>당신이 좋아하는 것은 아래와 같습니다. :)</h2>

<%=animal %>
<%=flower %>

</body>
</html>