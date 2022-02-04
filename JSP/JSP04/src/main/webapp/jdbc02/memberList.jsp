<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
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
	//Connection : DB와 연결성을 갖는 인터페이스
	Statement statement;
	//Statement : SQL문을 실행하는 인터페이스
	ResultSet resultSet;
	//ResultSet : 조회결과 데이터를 갖는 인터페이스
	
	String driver = "oracle.jdbc.OracleDriver";
	//OracleDriver : Oracle JDBC 드라이버 클래스이다.
	//자바 응용프로그램에서 데이터베이스에 접속하려면
	//드라이버를 프로그램에 등록하는 코드를 제공해야 한다.
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	
	String uid = "C##JSPUSER";
	String upw = "jsp123";
	String query = "select * from KGMember";
%>

<%
	try{
		Class.forName(driver);
		//oracle 드라이버 클래스를 메모리에 올린다.
		connection = DriverManager.getConnection(url,uid,upw);
		
		statement=connection.createStatement();
		resultSet=statement.executeQuery(query);
		
		while(resultSet.next()){
			//다음 레코드가 있는지 판단하여 없으면 false
			//있으면 true를 반환한 다음 커서를 다음레코드로 이동시킨다.
			String id=resultSet.getString("id");
			//컬럼의 값을 추출하는 getter메소드를 가지고 있다.
			//문자열로 컬럼의 이름을 지정할 수 있다.
			String pw =resultSet.getString("pw");
			String name=resultSet.getString("name");
			int age = resultSet.getInt("age");
			String phone = resultSet.getString("phone");
		
			out.print("아이디 : " + id + ", 비밀번호 : " + pw + ", 이름 : " + name + ", 나이 : " + age + ", 전화번호 : " + phone + "<br>");	
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	finally{
		//DB관련 처리작업이 완료된 다음에는 사용했던 객체들을 메모리에서 해제해 주어야 한다.
		//해제하는 순서는 최근에 사용했던 객체부터 거꾸로 올라가며 해제한다.
		try{	
		if(resultSet!=null) resultSet.close();
		if(statement !=null) statement.close();
		if(connection != null) connection.close();
	}catch(Exception e2){}
	}
	
	
%>
</body>
</html>