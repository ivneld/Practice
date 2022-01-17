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
	
	if(sessionValue.equals("ivneld")){
		out.print("김유성님 안녕하세요. <br>");
	}
	%>
	<a href="sessionLogout.jsp">로그아웃</a>
</body>
</html>