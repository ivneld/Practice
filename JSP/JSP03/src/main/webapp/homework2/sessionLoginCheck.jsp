<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id,pw;
	%>
	
	<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	if(id.equals("ivneld") && pw.equals("1234")){
		session.setAttribute("id", id);
		response.sendRedirect("sessionMain.jsp");
	}
	else
		response.sendRedirect("sessionLogin.html");
	%>
</body>
</html>