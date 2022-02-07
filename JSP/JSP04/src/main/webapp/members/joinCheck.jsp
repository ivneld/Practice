<%@page import="com.jsp.members.MembersDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.jsp.members.MembersDTO" %>
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
		넘어온 데이터 받기
		regDate 세팅해주기
		DAO 객체 생성하기
		아이디 체크하기
		아이디가 없다면 데이터베이스에 데이터 넣기
		정상적으로 데이터가 들어갔다면 login.jsp로 페이지 이동시키기
	 --%>
	 
	<%
		request.setCharacterEncoding("UTF-8");
	%> 
	
	<jsp:useBean id="dto" class="com.jsp.members.MembersDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<%--
		프로퍼티가 많을 경우에는 프로퍼티 속성값을 * 로 주면 모든 프로퍼티 값이 세팅된다.
		주의할 점은 폼으로부터 넘어오는 이름이 프로퍼티의 이름과 일치해야 한다는 것이다. 
	 --%>
	 <%
	 	dto.setRegDate(new Timestamp(System.currentTimeMillis()));
	 	//regDate 까지 세팅해주자
	 	
	 	MembersDAO dao = MembersDAO.getInstance();
	 	
	 	if(dao.confirmID(dto.getId())==1){
	 		//같은 아이디가 있다면
	 %>
	 	<script>
	 		alert('아이디가 이미 존재합니다.');
	 		window.history.back();
	 	</script>	
	 <%	
	 	}else{
	 	//아이디가 없다면
	 	int result = dao.insertMember(dto);
	 	//데이터베이스에 데이터 넣기
	 	if(result == 1){
	 	//정상적으로 데이터 들어감
	 %>
	 	<script>
	 		alert('회원가입을 축하합니다.');
	 		window.location = "login.jsp";
	 	</script>
	 <%
	 	}else{
	 %>
	 	<script>
	 		alert('회원가입에 실패했습니다.');
	 		window.location = "join.jsp";
	 	</script>
	 <%
	 }
	 %>
	 <%
	 }
	 %>
</body>
</html>