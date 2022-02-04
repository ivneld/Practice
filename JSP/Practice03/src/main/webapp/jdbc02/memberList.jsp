<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
	Connection conn;
	Statement stmt;
	ResultSet rs;
	String driver="oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "C##JSPUSER";
	String upw = "jsp123";
	String query = "select * from KGMember";
	%>
	
	<% 
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url,uid,upw);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		
		while(rs.next()){
			String id = rs.getString("id");
			String pw = rs.getString("pw");
			String name= rs.getString("name");
			int age = rs.getInt("age");
			String phone = rs.getString("phone");
			
			out.print("아이디 : " + id + ", 비밀번호 : ," + pw + ", 이름 : " + name + ", 나이 : " + age + ", 전화번호 : " + phone + "<br>");
		}
	}catch(Exception e) {e.printStackTrace();}
	finally{
		//DB관련 처리작업이 완료된 다음에는 사용했던 객체들을 메모리에서 해제해 주어야 한다.
		//해제하는 순서는 최근에 사용했던 객체부터 거꾸로 올라가며 해제한다.
		try{	
		if(rs!=null) rs.close();
		if(stmt !=null) stmt.close();
		if(conn != null) conn.close();
	}catch(Exception e2){}
	}
%>
</body>
</html>