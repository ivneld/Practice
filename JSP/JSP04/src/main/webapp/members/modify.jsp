<%@page import="com.jsp.members.MembersDTO"%>
<%@page import="com.jsp.members.MembersDAO"%>
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
	String id = (String)session.getAttribute("id");
	MembersDAO dao = MembersDAO.getInstance();
	
	MembersDTO dto = dao.getMember(id);
%>

<form action="modifyCheck.jsp" method="post">
	아이디 : <%=dto.getId() %> <br>
	비밀번호 : <input type="password" name="pw" size="10"><br>
	
	이름 : <%=dto.getName() %><br>
	
	이메일 : <input type="text" name="email" value="<%=dto.getEmail() %>"><br>
	주소 : <input type="text" name="address" value="<%=dto.getAddress() %>"><br>
	
	<input type="submit" value="정보수정">
	
</form>
</body>
</html>