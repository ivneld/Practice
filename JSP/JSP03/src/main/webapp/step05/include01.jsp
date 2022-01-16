<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>include01.jsp 페이지 입니다.</h1>
	
	<%@include file="include02.jsp" %>
	
	<%--
		지시자 include는 주로 조각난 코드를 삽입하고자 할 때 사용된다.
	 --%>

	<h3>다시 include01.jsp 페이지 입니다.</h3>
</body>
</html>