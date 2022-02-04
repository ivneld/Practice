<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
	Connection connection;
	//DB와 연결성을 겆는 인터페이스
	Statement stmt;
	//SQL문을 실행하는 인터페이스
	ResultSet resultSet;
	//조회결과 데이터를 갖는 인터페이스
	
	String driver = "oracle.jdbc.OracleDriver";
	
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String uid="C##JSPUSER";
	String upw="jsp123";
	String query="select * from KGMember";
%>
<%
	try{
		Class.forName(driver);
		//oracle드라이버 클래스를 메모리에 올린다.
		connection = DriverManager.getConnection(url,uid,upw);
		
		stmt=connection.createStatement();
		resultSet=stmt.executeQuery(query);
		
		while(resultSet.next()) {
			String id=resultSet.getString("id");
			String pw=resultSet.getString("pw");
			String name=resultSet.getString("name");
			int age = resultSet.getInt("age");
			String phone=resultSet.getString("phone");
			
			out.print("아이디 : " + id + ", 비밀번호 : " + pw + ", 이름 : " + name + ", 나이 : " + age + ", 번호 : " + phone + "<br>");
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	finally{
		try{
			if(resultSet!=null) resultSet.close();
			if(stmt !=null) stmt.close();
			if(connection !=null) connection.close();
		}catch(Exception e2) {}
	}
%>
</body>
</html>