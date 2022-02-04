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
		Cookie cookie = new Cookie("cookieName","cookieValue");
		cookie.setMaxAge(60);
		response.addCookie(cookie);
	%>
	<p>쿠키가 탑재되었습니다.</p>
	<a href="cookieGet.jsp">쿠키 얻기</a>
</body>
</html>