<%@page import="java.util.Enumeration"%>
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
		Object ob1 = session.getAttribute("name1");
		String value1 = (String)ob1;
		Object ob2= session.getAttribute("name2");
		String value2 = (String)ob2;
		
		out.print("name1 value : " + value1 + "<br>");
		out.print("name2 value : " + value2 + "<br>");
		
		//Enumeration을 이용한 방법
		out.print("---------------------<br>");
		String sName, sValue;
		Enumeration<String> e = session.getAttributeNames();
		while(e.hasMoreElements()){
			sName=e.nextElement();
			sValue=session.getAttribute(sName).toString();
			
			out.print("session name : " + sName + "<br>");
			out.print("session value : " + sValue + "<br>");
		}
		
		String sessionID = session.getId();
		out.print("sessionID : " + sessionID);
		int sessionInter = session.getMaxInactiveInterval();
		out.print(sessionInter + "<br>---------------------------<br>");
		
		session.removeAttribute("name1");
		
		e=session.getAttributeNames();
		while(e.hasMoreElements()){
			sName=e.nextElement();
			sValue=session.getAttribute(sName).toString();
			
			out.print("session name : " + sName + "<br>");
			out.print("session value : " + sValue + "<br>");
		}
		
		session.invalidate();
		
		if(request.isRequestedSessionIdValid()){
			out.print("유효한 세션 있음");
		}
		else
			out.print("세션 없음");
	%>
</body>
</html>