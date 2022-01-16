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
		int randomSu() {
		int a= (int)(Math.random()*10)+1;
		return a;
	}
	%>
	
	<%
		int ran=randomSu();
		out.print(ran);
	%>
</body>
</html>