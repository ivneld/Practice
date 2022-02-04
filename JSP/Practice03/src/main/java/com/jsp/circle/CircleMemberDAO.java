package com.jsp.circle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CircleMemberDAO {
	
	private CircleMemberDAO() {}
	
	private static CircleMemberDAO instance = new CircleMemberDAO();
	
	public static CircleMemberDAO getInstance() {
		return instance;
	}
	
	public int insertCircle(CircleMemberDTO dto) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "C##JSPUSER";
		String upw="jsp123";
		String query = "insert into CircleMember values(?,?,?,?)";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, dto.getName());
			pstmt.setInt(2,dto.getAge());
			pstmt.setString(3, dto.getPhone());
			pstmt.setString(4, dto.getEmail());
			result = pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) pstmt.close();
			}catch(Exception e2) {}
		}
		return result;
	}
	
	public ArrayList<CircleMemberDTO> circleList() {
		ArrayList<CircleMemberDTO> list = new ArrayList<CircleMemberDTO>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "C##JSPUSER";
		String upw = "jsp123";
		String query = "select * from CircleMember";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				
				CircleMemberDTO dto = new CircleMemberDTO(name,age,phone,email);
				list.add(dto);
			}	
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e2) {}
		}
		return list;
	}
}
