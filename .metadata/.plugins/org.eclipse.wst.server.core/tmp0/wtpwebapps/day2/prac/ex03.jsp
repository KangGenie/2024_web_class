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
String dan_ = request.getParameter("dan");
if(dan_ ==null) return;

int dan = Integer.parseInt(dan_);

for(int i=1; i<9; i++){
	out.println( dan*i+"<br>");
	
}

%>

</body>
</html>