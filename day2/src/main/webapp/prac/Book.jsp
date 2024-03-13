<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{
width:500px;
border:1px solid black;
border-collapse: collapse;
}
td{
border:1px solid black;
text-align:center;
}
</style>

</head>
<body>
<h2>책 정보</h2>

<%
ArrayList<Book> list = new ArrayList<>();
list.add(new book("고구려1","김진명",15000));
list.add(new book("고구려2", "김진명", 14000));
list.add(new book("고구려3", "김진명", 15000));
%>
<table>
   <tr>
      <td>책제목</td>
      <td>저자</td>
      <td>가격</td>
   </tr>
  <% for( int i=0; i < list.size(); i++){  
            Book b  = list.get(i);
     %>
    <tr>
      <td> <%=b.getName()%></td>
      <td> <%=b.getAuthor()%></td>
      <td> <%=b.getPrice()%></td>
   </tr>
   <% 
    }
   %>
</body>
</html>