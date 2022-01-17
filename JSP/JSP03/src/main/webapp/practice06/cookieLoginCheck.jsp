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
	아이디 : hong 비먼 : 1234 와 일치한다면
	쿠키를 생성 후 받은 아이디 값으로 쿠키값을 설정
	Cookie cookie = new Cookie("id","hong");
	설정 후 sendRedirect로 cookieMain.jsp로 보내기
	아이디나  또는 비밀번호가 틀리다면 sendRedirect로
	cookieLogin.html로 보내기
 --%>
 
 <%! 
 	String id,pw;
 %>
 
 <%
 	request.setCharacterEncoding("UTF-8");
 
 	id=request.getParameter("id");
 	pw=request.getParameter("pw");
 	
 	if(id.equals("hong") && pw.equals("1234")){
 		Cookie cookie=new Cookie("id",id);
 		cookie.setMaxAge(60*60);
 		response.addCookie(cookie);
 		response.sendRedirect("cookieMain.jsp");
 	}
 	else{
 		response.sendRedirect("cookieLogin.html");
 	}
 %>
</body>
</html>