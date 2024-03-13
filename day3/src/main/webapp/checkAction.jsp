<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%

request.setCharacterEncoding("utf-8");
String[] hobbys = request.getParameterValues("hobby");

for(String hobby : hobbys){
	out.println(hobby);
}
%>