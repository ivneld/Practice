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
		Cookie[] cookies=request.getCookies();
		//쿠키 배열로 받는다.
		
		for(int i=0; i<cookies.length; i++){
			String str = cookies[i].getName();	
			
			if(str.equals("cookieName")){
				out.print("cookies[" + i + "] name : " + cookies[i].getName() + "<br>");
				out.print("cookies[" + i + "] value : " + cookies[i].getValue() + "<br>");
				out.print("--------------<br>");
			}
		}
	%>
	
	<a href="cookieDelete.jsp">쿠기삭제</a>
	
</body>
</html>