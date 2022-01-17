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
	Object obj1=session.getAttribute("id");
	String sessionValue=(String)obj1;
	
	if(sessionValue.equals("hong")){
		out.print("<h1>홍길동님 안녕하세요.</h1> <br>");
	}
	
%>

<a href="sessionLogout.jsp">로그아웃</a>
</body>
</html>