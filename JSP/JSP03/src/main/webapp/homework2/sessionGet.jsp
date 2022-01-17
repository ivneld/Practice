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
	Object ob1=session.getAttribute("sessionName");
	Object ob2=session.getAttribute("sessionNumber");
	
	String sessionValue=(String)ob1;
	out.print("ob1의 Value = " + sessionValue +"<br>");
	
	int sessionNumberValue=(int)ob2;
	out.print("ob2의 Value = " + ob2 + "<br>");
	
	out.print("------------------------------<br>");
	
	String sName,sValue;
	Enumeration<String> e= session.getAttributeNames();
	
	while(e.hasMoreElements()){
		sName=e.nextElement();
		sValue=session.getAttribute(sName).toString();
		
		out.print("session 이름 : " + sName + "<br>");
		out.print("session 값 : " + sValue + "<br>");
	}
	
	out.print("------------------------------<br>");
	
	String sessionID=session.getId();
	out.print("session ID : " + sessionID + "<br>");
	
	int sessionInterval=session.getMaxInactiveInterval();
	out.print("sessionInterval : " + sessionInterval + "<br>");
	
	out.print("------------------------------<br>");
	
	session.removeAttribute("sessionName");
	out.print("sessionName 삭제 <br>");
	e = session.getAttributeNames();
	
	while(e.hasMoreElements()){
		sName=e.nextElement();
		sValue=session.getAttribute(sName).toString();
		
		out.print("session 이름 : " + sName + "<br>");
		out.print("session 값 : " + sValue + "<br>");
	}
	
	out.print("------------------------------<br>");
	
	session.invalidate();
	out.print("모든 세션 삭제<br>");
	
	if(request.isRequestedSessionIdValid())
		out.print("유효한 세션 있음");
	else
		out.print("세션 없음");
	%>
</body>
</html>