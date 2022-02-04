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
request.setCharacterEncoding("UTF-8");
String name=request.getParameter("userName");
String food=request.getParameter("food");
String foodName=null;

if(food.equals("jajang"))
	foodName="짜장";
else if(food.equals("jamppong"))
	foodName="짬뽕";
%>

<h1><%=name %>님이 좋아하는 음식은 <%=foodName %> 이군요!</h1>
</body>
</html>