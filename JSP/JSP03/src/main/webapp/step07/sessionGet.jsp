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
		//getAttriburte의 반환값은 Object이다.
		String sessionValue=(String)ob1;
		
		out.print("sessionNane의 값 : " + sessionValue + "<br>");
		
		Object ob2=session.getAttribute("sessionNumber");
		int sessionNumberValue=(Integer)ob2;
		
		out.print("sessionNumber의 값 : " +sessionNumberValue + "<br>");
		
		out.print("----------------------<br>");
		
		String sName;
		String sValue;
		
		Enumeration<String> e =session.getAttributeNames();
		//모든 세션이름들을 Enumeration<String> 타입으로 준다.
	
		while(e.hasMoreElements()){
			sName=e.nextElement();
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션이름 : " + sName + "<br>");
			out.print("세션 값 : " + sValue + "<br>");
		}
		
		out.print("-------------------<br>");
		
		String sessionID=session.getId();
		//한 브라우저당 고유한 세션아이디가 생성된다.
		
		out.print("세션 아이디 : " + sessionID + "<br>");
		
		int sessionInter=session.getMaxInactiveInterval();
		//세션의 유효시간 (기본 30분)
		out.print("-------------------<br>");
		
		session.removeAttribute("sessionName");
		//세션삭제 (세션 이름)
		
		out.print("-------------------<br>");
		
		e =session.getAttributeNames();
		
		while(e.hasMoreElements()){
			sName=e.nextElement();
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션이름 : " + sName + "<br>");
			out.print("세션 값 : " + sValue + "<br>");
		}
		
		out.print("-------------------<br>");
	
		session.invalidate();
		//세션의 모든 데이터 삭제
		
		if(request.isRequestedSessionIdValid()){
			out.print("유효한 세션 있음");
		}
		else
			out.print("세션 없음");
	%>
</body>
</html>