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
<h2>å ����</h2>

<%
ArrayList<Book> list = new ArrayList<>();
list.add(new book("����1","������",15000));
list.add(new book("����2", "������", 14000));
list.add(new book("����3", "������", 15000));
%>
<table>
   <tr>
      <td>å����</td>
      <td>����</td>
      <td>����</td>
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