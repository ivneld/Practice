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
		Cookie[] cookies = request.getCookies();
	
		for(int i=0; i<cookies.length; i++){
			String str = cookies[i].getName();
			String val = cookies[i].getValue();
			
			if(str.equals("cookieName")){
				out.print("cookies[" + i + "] name : " + str + "<br>");
				out.print("cookies[" + i + "] value : " + val + "<br>");
			}
		}
	%>
	<a href="cookieDelete.jsp">쿠키 삭제</a>
</body>
</html>