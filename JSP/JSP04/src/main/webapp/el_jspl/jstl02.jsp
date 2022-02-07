<%@page import="java.util.ArrayList"%>
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

	<%--
		choose는 자바의 switch문과 비슷한 역할을 한다.
		case와 같은 역할을 하는 것은 choose 안의 when 태그이다.
		default 와 같은 역할을 사용하고 싶으면 otherwise를 사용한다.	
	 --%>
	 <c:set var="a" value="20"/>
	 
	 <c:choose>
	 	<c:when test="${a == 10 }">
	 		a는 10입니다.
	 	</c:when>
	 	
	 	<c:when test="${a == 20 }">
	 		a는 20입니다.
	 	</c:when>
	 	
	 	<c:otherwise>
	 		a는 10과 20이 아닙니다.
	 	</c:otherwise>
	 </c:choose>
	 <br>
	 <hr>
	 <%--
	 	forEach : for문
	  --%>
	  
	  <c:forEach var="i" begin="0" end="30" step="3">
	  	
	  	${i}
	  </c:forEach>
	  
	  <%
	  	ArrayList<String> list = new ArrayList<>();
	  list.add("홍길동");
	  list.add("성춘향");
	  list.add("이순신");
	  request.setAttribute("list", list);
	  %>
	  	<%--
	  		items 속성에 컬렉션 객체를 넣어주면
	  		순서대로 반복이 된다.
	  	 --%>
	  <c:forEach var="i" items="${list}">
	  	${i}
	  </c:forEach>
</body>
</html>