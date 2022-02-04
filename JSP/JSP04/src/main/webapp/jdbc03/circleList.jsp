<%@page import="com.jsp.circle.CircleMemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jsp.circle.CircleMemberDAO"%>
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
		1. DAO객체 얻기
		2. 데이터 얻는 메소드 호출하여 ArryayList<CircleMemberDTO> 객체 얻기
		3. list에 있는 DTO객체를 하나씩 얻어서 이름 나이 전화번호 이메일 출력하기
	 --%>
	 
	 <%
	 	CircleMemberDAO dao = CircleMemberDAO.getInstance();
	 	
	 ArrayList<CircleMemberDTO> list = dao.circleList();
	 
	 out.print("<h1>동아리 회원목록</h1>");
	 
	 for(int i=0; i<list.size(); i++){
		 CircleMemberDTO dto = list.get(i);
		 
		 out.print("이름 : " + dto.getName() + ", 나이" + dto.getAge() + ", 전화번호 : " + dto.getPhone() + ", 이메일 : " + dto.getEmail() + "<br>");		 
	 }
	 %>
</body>
</html>