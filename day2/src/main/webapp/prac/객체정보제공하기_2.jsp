<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="day2.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>��ü���� �����ϱ�</h2>
<% 
Book book = new Book("c", "����", 14420);
out.println(book.toString());
%>
</body>
</html>