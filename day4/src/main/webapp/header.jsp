<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	
	header{
	border:1px solid black;
	display:flex;
	height:300px;
	}
	
	header > div{
	border:1px solid black;
	width:33%;
	}
	.logo{
	width:100px;
	background-color: red;
	}
	.menu_wrap{
	position: relative;
	}
	.menu{
	width:100px;
	background-color:blue;
	position: absolute;
	right:20px;
	}
</style>
</head>
<body>
	
	<header>
		<div class="logo_wrap"> <div class="logo">�ΰ���</div> </div>
		<div class="search_wrap"> <div class="search">�˻���</div> </div>
		<div class="menu_wrap"> <div class="menu">��ũ�޴�</div> </div>
	</header>


</body>
</html>