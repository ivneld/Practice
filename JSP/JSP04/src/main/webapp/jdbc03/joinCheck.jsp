<%@page import="com.jsp.circle.CircleMemberDAO"%>
<%@page import="com.jsp.circle.CircleMemberDTO"%>
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
	1. 넘어온 데이터 받기
	2. DAO객체 생성
	3. 데이터 넣는 메소드 호출
	4. 회원가입이 정상적으로 이루어졌다면 브라우저에 회원가입 축하 출력
		정상적이지 않다면 circleJoinForm으로 보내기
	5. a 태그로 회원 목록보기 추가
	 --%>
	
	 
	 <%
	 	request.setCharacterEncoding("UTF-8");
	 	String name=request.getParameter("name");
	 	String phone = request.getParameter("phone");
	 	String email=request.getParameter("email");
	 	String strAge=request.getParameter("age");
	 	int age=Integer.parseInt(strAge);
	 			
	 %>
	 
	 <jsp:useBean id="dto" class="com.jsp.circle.CircleMemberDTO"/>
	 
	 <jsp:setProperty property="name" name="dto" value="<%=name %>"/>
	 <jsp:setProperty property="age" name="dto" value="<%=age %>"/>
	 <jsp:setProperty property="phone" name="dto" value="<%=phone %>"/>
	 <jsp:setProperty property="email" name="dto" value="<%=email %>"/>
	
	<%
		CircleMemberDAO dao = CircleMemberDAO.getInstance();
	
		int result=dao.insertCircle(dto);
		if(result == 1){
	%>	
	<script>alert('회원가입이 정상적으로 완료되었습니다.');</script>
	<p>회원가입을 축하드립니다.</p>
	<a href="circleList.jsp">회원 목록 보기</a>
	<%
		}else {
	%>
	<script type="text/javascript">
		alert('회원가입이 이루어지지 않았습니다.');
		window.location='circleJoinForm.jsp';
	</script>
	<%} %>
</body>
</html>