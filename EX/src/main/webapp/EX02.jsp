<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<title>Insert title here</title>
<style>
.wrap{
	width:1000px;
	border: 1px solid black;
}
select{
maring: 0 auto;
}
table{
border:1px solid black;
display: flex;
margin: 0 auto;
border-collapse: collapse;
}

tr td{
border: 1px solid black;
text-align:center;

}

</style>
</head>
<body>
 <div class ="wrap">
 
 	<select>
 		<option value="selectable">������ �� �ֽ��ϴ�.</option>
 		<option value="song">��</option>
 		<option value="artist">����</option>
 	</select>
 	<input type="text" class="search-input" placeholder="�˻�� �Է��ϼ���">
    <button class="search-button"><i class="fas fa-search"></i></button>
 	
	<table class="container">
		<tr>
		 <td>no</td>
		 <td>��</td>
		 <td>artist</td>
		 <td>album</td>
		 <td>���</td>
		</tr>
	
	</table> 
 </div>
</body>
</html>