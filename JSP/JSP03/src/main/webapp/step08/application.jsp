<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--application 객체는 JSP 기본객체로 JSP페이지에서 따로
	선언하지 않아도 사용이 가능하다.
	application 기본객체는 자신이 속한 웹 어플리케이션
	범위안의 모든 JSP 범위에서 공유된다.
	 --%>
	 
	 <%
	 application.setAttribute("name","홍길동");
	 String name = (String)application.getAttribute("name");
	 out.print("어플리케이션에 저장된 이름 : " + name);
	 %>
</body>
</html>