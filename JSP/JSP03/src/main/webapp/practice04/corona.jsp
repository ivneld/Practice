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
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String area = request.getParameter("area");
	String vac = request.getParameter("vac");
	String nation=null;
	
	if(area.equals("jpn")) nation="일본";
	else if(area.equals("usa")) nation="미국";
	else if(area.equals("china")) nation="중국";
	
	if(vac.equals("no"))
		out.print(nation + "여행은 다음기회에..");
	else if(vac.equals("1st"))
		out.print(nation + "여행은 2차 까지 접종하셔야 합니다.");
	else if(vac.equals("2nd"))
		out.print(name + "님 " + nation + "여행을 축하드립니다.");
	
	%>
	<br>
	<a href="formEx.html">처음으로 이동</a>
</body>
</html>