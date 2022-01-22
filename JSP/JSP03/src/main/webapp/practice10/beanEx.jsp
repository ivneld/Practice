<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	useBean 액션태그로 빈객체 만들기
	setProperty 액션태그로 데이터 넣기
	getProperty 액션태그로 웹 브라우저에 출력 --%>
	<jsp:useBean id="Member" class="com.java.jsp.Member" scope="page" />
	<jsp:setProperty property="id" name="Member" value="ivneld"/>
	<jsp:setProperty property="pw" name="Member" value="1234"/>
	<jsp:setProperty property="name" name="Member" value="김유성"/>
	<jsp:setProperty property="age" name="Member" value="26"/>
	
	아이디 : <jsp:getProperty property="id" name="Member"/> <br>	
	비번 : <jsp:getProperty property="pw" name="Member"/> <br>
	이름 : <jsp:getProperty property="name" name="Member"/> <br>
	나이 : <jsp:getProperty property="age" name="Member"/> <br>
</body>
</html>