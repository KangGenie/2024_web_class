<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import ="java.util.ArrayList" %>
    <%@ page import ="day8.Acorn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table{
width:600px;
border:1px solid black;
margin:0 auto;
border-collapse: collapse;
}

td{
border:1px solid black;
text-align:center;
}

</style>
</head>
<body>

<table>
<tr>
<td>아이디</td>
<td>비번</td>
<td>이름</td>
</tr>
<%ArrayList<Acorn> list = (ArrayList<Acorn>) request.getAttribute("list");
	for(Acorn acorn : list){
%>
<tr>
<td><%=acorn.getId() %></td>
<td><%=acorn.getPw() %></td>
<td><%=acorn.getName() %></td>
</tr>
<%} %>

</table>

</body>
</html>