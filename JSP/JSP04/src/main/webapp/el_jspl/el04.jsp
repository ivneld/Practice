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
		서블릿 보관소에 저장된 데이터를 사용할 수 있다.
	 --%>
	 
	 <%
	 	application.setAttribute("application_name", "appli_value");
	 	session.setAttribute("session_name", "session_value");
	 	pageContext.setAttribute("page_name", "page_value");
	 	request.setAttribute("request_name", "request_value");
	 %>
	 
	 어플리케이션 : ${applicationScope.application_name }<br>
	 세션 : ${sessionScope.session_name }<br>
	 페이지 : ${pageScope.page_name }<br>
	 리퀘스트 : ${requestScope.request_name }<br>
</body>
</html>