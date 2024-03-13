<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 두 수를 사용자로 부터 입력 받아 사칙연산해서 제공하기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
.wrap{
 width:200px;
 border:1px solid black;
 padding : 20px;
 box-sizing : border-box;
 margin : 0 auto;
 margin-top:200px;
 text-align : center;
}

</style>
</head>
<body>

<%
 String sul_ =request.getParameter("sul");
 String su2_ =request.getParameter("su2");
 
 int su1, su2;
 
 su1=Integer.parseInt(sul_);
 su2=Integer.parseInt(su2_);
 
 int total;
 total= su1+su2;
 //out.println(total;)
%>

<div class="wrap">
<%=total %>
</div>

</body>
</html>