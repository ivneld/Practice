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
%>

<jsp:forward page="food.jsp">
	<jsp:param name="userName" value="홍길동"/>
</jsp:forward>

<%--
	하나의 JSP페이지에서 다른 JSP페이지로 요청처리를 전달할 때 사용한다.
	웹 브라우저의 주소는 그대로 요청받은 JSP 주소로 유지된다.
	요청 흐름이 이동할 때 request, response 기본객체가 전달된다.
	즉, 요청한 페이지 주소를 유지 할 수 있다.
 --%>
</body>
</html>