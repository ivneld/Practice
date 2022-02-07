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
		EL은 자바빈의 프로퍼티(데이터)를 JSP의 표현식이나
		액션태그를 사용하는 것보다 쉽고 간결하게 사용할 수 있다.
	 --%>
	 
	 <jsp:useBean id="member" class="com.jsp.el.MemberEL" />
	 <jsp:setProperty property="name" name="member" value="홍길동"/>
	 <jsp:setProperty property="id" name="member" value="hong"/>
	 <jsp:setProperty property="pw" name="member" value="1234"/>
	 
	 이름 : <jsp:getProperty property="name" name="member" /><br>
	 아아디 : <jsp:getProperty property="id" name="member" /><br>
	 비밀번호 : <jsp:getProperty property="pw" name="member" /><br>
	 
	 <hr>
	 
	 이름 : ${member.name}<br>
	 아이디 : ${member.id }<br>
	 비밀번호 : ${member.pw }<br>
</body>
</html>