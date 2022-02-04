<%@page import="com.jsp.circle.CircleMemberDAO"%>
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
	String name = request.getParameter("name");
	String strAge = request.getParameter("age");
	int age=Integer.parseInt(strAge);
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	%>
	
	<jsp:useBean id="dto" class="com.jsp.circle.CircleMemberDTO" />
	<jsp:setProperty property="name" name="dto" value="<%=name %>"/>
	<jsp:setProperty property="age" name="dto" value="<%=age %>"/>
	<jsp:setProperty property="phone" name="dto" value="<%=phone %>"/>
	<jsp:setProperty property="email" name="dto" value="<%=email %>"/>
	
	<%
		CircleMemberDAO dao = CircleMemberDAO.getInstance();
		int result = dao.insertCircle(dto);
		
		if(result==1){
	%>
	<script>alert('회원가입을 정상적으로 완료되었습니다');</script>
	<a>회원가입을 축하드립니다.!</a>
	<a href="circleList.jsp">회원목록 확인하기</a>
	<%
		}else{
	%>
	<script type="text/javascript">
	alert('회원가입 오류!');
	window.location="circleJoinForm.jsp";
	<%}
	%>
	</script>
</body>
</html>