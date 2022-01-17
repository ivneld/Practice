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
		Object obj=session.getAttribute("id");
		String sessionValue=(String)obj;
		
		if(sessionValue.equals("hong")){
			session.removeAttribute("id");
		}
		
		response.sendRedirect("sessionTest.jsp");
	%>
</body>
</html>