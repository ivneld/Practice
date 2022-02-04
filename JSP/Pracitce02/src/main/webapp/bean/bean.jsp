<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="student" class="com.java.servlet.Student" scope="page"/>
	
	<jsp:setProperty property="studentID" name="student" value="19013125"/>
	<jsp:setProperty property="name" name="student" value="홍길동"/>
	<jsp:setProperty property="age" name="student" value="20"/>
	<jsp:setProperty property="grade" name="student" value="1"/>
	<%--
		name > "자바빈"
		property > "속성(이름)"
		value > "값"
	 --%>
	 
	학번 : <jsp:getProperty property="studentID" name="student"/> <br>
	이름 : <jsp:getProperty property="name" name="student"/> <br>
	나이 : <jsp:getProperty property="age" name="student"/> <br>
	학년 : <jsp:getProperty property="grade" name="student"/> <br>
</body>
</html>