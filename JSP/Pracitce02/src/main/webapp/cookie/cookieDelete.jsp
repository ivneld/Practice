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
		Cookie[] cookies  = request.getCookies();
		
		for(int i=0; i<cookies.length; i++){
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			
			if(name.equals("cookieName")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
				out.print("쿠키가 삭제되었습니다.");
			}
		}
	%>
	
	<a href="cookieTest.jsp">쿠키 확인</a>
</body>
</html>