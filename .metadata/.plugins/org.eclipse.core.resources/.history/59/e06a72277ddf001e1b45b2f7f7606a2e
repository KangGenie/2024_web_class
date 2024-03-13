<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@  page import="java.util.*" %>
<%@ page import="day4.MyMusic" %>
<%
//세션 이름이 musicList인 list가져옴
ArrayList<MyMusic> list = (ArrayList<MyMusic>)session.getAttribute("musicList");
String cnt_ = request.getParameter("cnt");
int cnt = Integer.parseInt(cnt_);

//list에서 객체 삭제
list.remove(cnt-1);

%>
out.println("<script>location.href='myPlayList.jsp'</script>");