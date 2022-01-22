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
		페이지에 들어올 때 마다 방문자수를 하나씩 올려
		출력해주는 페이지 만들기
	 --%>
	 
	 <%!
	 	int cnt=0;
	 %>
	 
	 <%
	 	if(application.getAttribute("visit")!=null){
	 		cnt=(int)application.getAttribute("visit");
	 	}
	 ++cnt;
	 
	 application.setAttribute("visit", cnt);
	 out.print("<h1>현재 방문자 수 : " + cnt + "</h1>");
	 %>
</body>
</html>