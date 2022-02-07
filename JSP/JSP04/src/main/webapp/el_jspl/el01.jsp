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
		EL(Expression Language)은 정수, 실수. boolean, 문자열, null을 표현항 수 있다.
	 --%>
	 정수 : ${100 }<br>
	 실수 : ${3.14 }<br>
	 논리 : ${true }<br>
	 문자열 : ${"ABCD" }<br>
	 널 : ${null }<br>
	 
	 <p>EL 산술연산자</p>
	 ${1 + 2 }<br>
	 ${1 - 2 }<br>
	 ${1 * 2 }<br>
	 ${1 / 2 }<br>
	 
	 <p>관계 연산자</p>
	 ${1 < 2 }<br>
	 ${1 > 2 }<br>
	 ${1 == 2 }<br>
	 ${1 != 2 }<br>
	 
	 <p>논리 연산자</p>
	 ${(1>2) || (1<2) }<br>
	 ${(1>2) && (1<2) }<br>
	 
	 <p>조건 연산자</p>
	 ${(1 > 3) ? 1 : 2 }<br> 
</body>
</html>