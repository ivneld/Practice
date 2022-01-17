<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		쿠키배열을 얻은 후 쿠키값이 hong인 쿠키 삭제하기
		삭제후 리다이렉트로 cookieTest.jsp로 보내기
	 --%>
	 
	 <%
	 	Cookie[] c =request.getCookies();
	 	
	 	for(int i=0; i<c.length; i++){
	 		String id= c[i].getValue();
	 		
	 		if(id.equals("ivneld")){
	 			c[i].setMaxAge(0);
	 			response.addCookie(c[i]);
	 		}
	 	}

		response.sendRedirect("cookieTest.jsp");
	 %>
</body>
</html>