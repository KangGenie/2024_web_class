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
 		<option value="selectable">선택할 수 있습니다.</option>
 		<option value="song">곡</option>
 		<option value="artist">가수</option>
 	</select>
 	<input type="text" class="search-input" placeholder="검색어를 입력하세요">
    <button class="search-button"><i class="fas fa-search"></i></button>
 	
	<table class="container">
		<tr>
		 <td>no</td>
		 <td>곡</td>
		 <td>artist</td>
		 <td>album</td>
		 <td>등록</td>
		</tr>
	
	</table> 
 </div>
</body>
</html>