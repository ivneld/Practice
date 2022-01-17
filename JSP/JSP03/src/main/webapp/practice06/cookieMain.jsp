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
		쿠키 배열을 얻은 후 
		쿠키값이 hong와 일치한다면 브라우저에
		홍길동님 안녕하세요 출력
	 --%>
	 
	 <%
	 	Cookie[] c= request.getCookies();
	 	
	 for(int i=0; i<c.length; i++){
		 String id = c[i].getValue();
	 
	 	if(id.equals("hong"))
	 		out.print("<h1>홍길동님 안녕하세요.<h1> <br>");
	 }
	 %>
	 
	 <a href="cookieLogout.jsp">로그아웃</a>
</body>
</html>