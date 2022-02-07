<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	if(session.getAttribute("ValidMem")==null){
%>
	<jsp:forward page="Login.jsp"/>
<%
	}
%>

</head>
<body>

<%
	String id = (String)session.getAttribute("id");
	String name = (String)session.getAttribute("name");
	
%>

<h1><%=name %>님 안녕하세요</h1>

<form action="logout.jsp" method="post">
	<input type="submit" value="로그아웃">
	
</form>
<br><br>
<form action="modify.jsp" method="post">
	<input type="submit" value="정보수정">
</form>
</body>
</html>