<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="day7.Acorn" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table{
border:1px solid black;
margin:0 auto;
width: 400px;
margin:0 auto;
border-collapse: collapse;
}
td{
border: 1px solid black;
text-align:center;
}

</style>
</head>
<body>
<%
Acorn acorn = (Acorn) request.getAttribute("acorn");
%>
<form name="frm" action="/day7/update" method="post">
<table>

<tr>
<td>���̵�</td>
<td><input type="text" name="id" value="<%=acorn.getId()%>"></td>
</tr>

<tr>
<td>��й�ȣ</td>
<td><input type="text" name="pw" value="<%= acorn.getPw()%>"></td>
</tr>

<tr>
<td>�̸�</td>
<td><input type="text" name="name" value="<%=acorn.getName()%>"></td>
</tr>

<tr>
<td  colspan="2">
<button>����</button>
</td>

</tr>

</table>
</form>

</body>
</html>