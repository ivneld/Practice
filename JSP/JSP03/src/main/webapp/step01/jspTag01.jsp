<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%-- 스트립트릿(scriptlet) 알아보기 --%>
	
	<%
		for(int i=0; i<=10; i++){
			if(i % 2==1){
				out.print(i+ "&nbsp;");
				//out : jsp 페이지가 생성하는 결과를 출력할때
				//사용되는 출력스트림 내장객체
				//jsp 주석 및 코드는 소스보기에 노출안됨
			}
		}
	%>
	
	<%-- 스크립트릿으 --%>
	<h3 style="text-align:center">구구단 출력</h3>
	<%
		int num;
		int dan;
		out.print("<table align=\"center\" border=\"1\">");
		
		for(num=1; num<=9; num++){
			out.print("<tr>");
			
			for(dan=2; dan<10; dan++){
				out.print("<td>" +dan +"X" +num + "="+dan*num+"</td>");
			}
			
			out.print("</tr>");
		}
		out.print("</table>");	
	%>
	
	<%
		for(int i=0; i<5; i++){
	%>
	<p>안녕하세요</p>
	<%}
	%>
</body>
</html>