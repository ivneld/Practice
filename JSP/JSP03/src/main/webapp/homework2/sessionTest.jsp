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
		if(request.isRequestedSessionIdValid())
			out.print("유효한 세션있음");
		else
			out.print("세션 없음");
	%>
</body>
</html>