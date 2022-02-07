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
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MembersDAO dao = MembersDAO.getInstance();
		
		int result = dao.userCheck(id, pw);
		
		if(result == -1) {
	%>
		<script>
			alert('아이디가 존재하지 않습니다.');
			history.back();
		</script>
	<%
		}else if(result == 1) {
				
			MembersDTO dto = dao.getMember(id);
			
			String name = dto.getName();
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("ValidMem", "yes");
			response.sendRedirect("main.jsp");
	%>
		
	<%
		}else if(result ==0) {
	%>
		<script>
			alert('아이디가 존재하지 않습니다.');
			history.back();
		</script>
	<%
		}	
	%>
</body>
</html>