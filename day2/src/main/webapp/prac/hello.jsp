<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table {
width :400px;
border:1px solid black;

}
</style>
</head>
<body>
<%//�ڹ��ڵ�
	 String title ="����ִ� å";
	 String author="ȫ�浿";
	 int price =15000;
	 
%>
<table>
<tr>
<td>����</td>
<td>����</td>
<td>����</td>
</tr>

<tr>
<td><% out.println(title); %></td>
<td><% out.println(author); %></td>
<td><% out.println(price); %></td>
</tr>
</table>

</body>
</html>