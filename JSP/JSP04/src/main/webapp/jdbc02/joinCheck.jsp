<%@page import="java.sql.DriverManager"%>
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
		private Connection conn;
		private Statement stmt;
		
		private String id,pw,name,phone;
		private int age;
	%>
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		id=request.getParameter("id");
		pw=request.getParameter("pw");
		name=request.getParameter("name");
		String strAge=request.getParameter("age");
		age=Integer.parseInt(strAge);
		phone=request.getParameter("phone");
		
		String query = "insert into KGMember values('" + id + "','" + pw + "','" + name + "'," + age + ",'" + phone + "')";
	
		try{
			String driver = "oracle.jdbc.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String uid = "C##JSPUSER";
			String upw = "jsp123";
			
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url,uid,upw);
			stmt = conn.createStatement();
			int i= stmt.executeUpdate(query);
			//executeUpdate 의 반환 값은 레코드 수이다.
			
			if(i==1){
				response.sendRedirect("joinResult.jsp");
			}
			else{response.sendRedirect("memberJoinForm.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
			if(stmt !=null)stmt.close();
			if(conn!=null)conn.close();
		}catch(Exception e2){}
		}
	%>
</body>
</html>