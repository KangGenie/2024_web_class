<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="day6.Prac12" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table{
border:1px solid black;
border-collapse:collapse;
width:500px;
margin:0 auto;
}
td{
border:1px solid black;
}
</style>
</head>
<body>
<%ArrayList<Book> list =(ArrayList<Book>) request.getAttribute("list"); %>
<table>

	<tr>
		<td>����</td>
		<td>����</td>
		<td>����</td>
	</tr>
	
	<%for(int i =0; i<list.size(); i++) {
		Book book = list.get(i);
	%>
	<tr>
		<td><%=book.getTitle() %></td>
		<td><%=book.getAuthor() %></td>
		<td><%=book.getPrice() %></td>
	</tr>
	<%} %>
</table>

</body>
</html>