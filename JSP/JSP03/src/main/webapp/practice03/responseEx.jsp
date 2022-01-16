<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! String name; %>
	
	<%
		String answer=request.getParameter(name);
	
		if(answer=="홍길동")
			response.sendRedirect("OK.jsp");
		else
			response.sendRedirect("NG.jsp");
	%>
</body>
</html>