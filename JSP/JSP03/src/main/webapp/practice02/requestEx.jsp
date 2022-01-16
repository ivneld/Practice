<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
String name,age,phone,jumin,area;
String[] hobby;
%>

<%
request.setCharacterEncoding("UTF-8");
name= request.getParameter("name");
age= request.getParameter("age");
phone= request.getParameter("phone");
jumin= request.getParameter("jumin");
area= request.getParameter("area");
hobby=request.getParameterValues("hobby");
%>

<h2>학생정보</h2>
이름 : <%=name %> <br>
나이 : <%=age %> <br>
번호 : <%=phone %> <br>
주민번호 : <%=jumin %> <br>
사는지역 : <%=area %> <br>
취미 : <%=Arrays.toString(hobby) %> <br>
</body>
</html>