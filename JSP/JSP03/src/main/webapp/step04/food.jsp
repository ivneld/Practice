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
	String food=request.getParameter("food");
	String userName=request.getParameter("userName");
	String foodName=null;
	
	if(food.equals("jajang")){
		foodName="짜장";
	}
	else
		foodName="짬뽕";
%>

<h1><%=userName %>님 당신은 <%=foodName %>을 좋아하시네요.</h1>
</body>
</html>