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
<!-- request ����ҿ��� ���� �������� request.getAtribute("msg")�� Object���̱� ������ String���� ����ȯ�� �ʿ��ϴ�.-->
<%String msg = (String)request.getAttribute("msg"); %>
	<div class="wrap">
	 <%=msg %>
	</div>
</body>
</html>