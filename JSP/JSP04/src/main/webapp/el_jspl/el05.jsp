<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setAttribute("scores", new int[]{10,20,30,40});
	%>
	
	배열 : ${scores[2] }<br>
	
	<hr>
	
	<%
		ArrayList<String> list = new ArrayList<>();
		list.add("홍길동");
		list.add("성춘향");
		list.add("이순신");
		request.setAttribute("arrayList", list);
	%>
	
	ArrayList : ${arrayList[1] }
</body>
</html>