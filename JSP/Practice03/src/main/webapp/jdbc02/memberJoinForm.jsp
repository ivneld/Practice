<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JDBC연습01</h1>
	<form action="joinCheck.jsp" method="post">
		아이디 : <input type="text" name="id" size="10"> <br>
		비밀번호 : <input type="password" name="pw" size="10"> <br>
		이름 : <input type="text" name="name" size="10"> <br>
		나이 : <input type="text" name="age" size="10"> <br>
		핸드폰 : <input type="text" name="phone" size="10"> 
		<br>
		<br>
		<input type="submit" value="회원가입">
		<input type="reset" value="취소">
	</form>
</body>
</html>