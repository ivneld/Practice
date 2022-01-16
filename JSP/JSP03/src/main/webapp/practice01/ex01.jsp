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
	String name;
	int age;
	String phone;
%>

<%
name="홍길동";
age=20;
phone="010-123-456";
%>

홍길동의 프로필 <br>
이름 : <%=name %> <br>
나이 : <%=age %> <br>
번호 : <%=phone %>
</body>
</html>