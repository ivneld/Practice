<%@page import="com.jsp.board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		boardDAO dao = boardDAO.getInstance();
		
		int result = dao.write(bName, bTitle, bContent);
		
		if(result == 1){
	%>
	
	<script type="text/javascript">
		alert('글이 등록되었습니다.');
		window.location = "boardList.jsp";
	</script>
	
	<%
	}else {
	%>
	<script type="text/javascript">
		alert('글이등록되지 않았습니다.');
		window.location = "writeForm.jsp";
	</script>
	<%
	}
	%>
</body>
</html>