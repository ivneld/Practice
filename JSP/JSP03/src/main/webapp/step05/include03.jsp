<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>include03.jsp 페이지 입니다.</h3>
	
	<jsp:include page="include04.jsp"></jsp:include>
	
	<h1>다시 include03.jsp 페이지 입니다.</h1>
	
	<%--
		include 액션태그를 만나면 해당 페이지로
		실행제어가 넘어가서 포함되는 페이지를 실행시킨다.
		해당 페이지의 실행이 종료도면 원래 페이지로 복귀하며
		최종적으로 클라이언트에게 보여지게 된다.
	 --%>
</body>
</html>