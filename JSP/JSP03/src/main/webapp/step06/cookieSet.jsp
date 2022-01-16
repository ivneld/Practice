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
		Cookie cookie = new Cookie("cookieName","cookieValue");
		//쿠키 생성 new Cookie("쿠키이름","쿠키값");
		
		cookie.setMaxAge(60*60);	//1시간 동안 쿠키유지
		//쿠키는 보통 유효시간을 정해주지 않음 웹브라우저를 닫음과 동시에 쿠키카 삭제된다.
		//정해놓았을 시 브라우저를 닫아도 유효시간이 남아있으면 남아있게 된다.
		
		response.addCookie(cookie);
		//response 객체의 addCookie메소드로 cookie객체를 브라우저에 심는다.
	%>
	
	<p>쿠키가 탑재되었습니다.</p>
	<a href="cookieGet.jsp">쿠키 얻기</a>
</body>
</html>