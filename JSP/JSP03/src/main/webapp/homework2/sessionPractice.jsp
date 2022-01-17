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
	session.setAttribute("sessionName", "sessionValue");
	session.setAttribute("sessionNumber", 1234);
	%>
	
	<a href="sessionGet.jsp">세션 얻기</a>
</body>
</html>