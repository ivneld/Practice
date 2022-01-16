<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 표현식(expression) 알아보기 
	 JSP 페이지내에서 사용되는 변수의 값 또는 메소드 호출 등
	 결과값울 툴력하기 위해 사용된다.
	 결과는 String 타입이며 세미콜론은 사용할 수 없다.
--%>

<%!
	String name="홍길동";
	int age=20;
	
	public int add(int a,int b) {
		return a+b;
	}
%>

	이름 : <%=name %><br>
	나이 : <%=age %><br>
	10 + 2- : <%=add(10,20) %> 
	
</body>
</html>