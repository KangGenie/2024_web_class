<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
.wrap{
width:300px;
height:300px;
border:1px solid black;
margin: 0 auto;

text-align:center;
line-height:300px;

}
</style>
</head>
<body>
<!-- request 저장소에서 값을 꺼내오기 request.getAtribute("msg")는 Object형이기 때문에 String으로 형변환이 필요하다.-->
<%String msg = (String)request.getAttribute("msg"); %>
	<div class="wrap">
	 <%=msg %>
	</div>
</body>
</html>