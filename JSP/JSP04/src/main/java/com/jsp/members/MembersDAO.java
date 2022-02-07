package com.jsp.members;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MembersDAO {

	private DataSource ds;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private MembersDAO() {
		
		try {
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			
		}catch(Exception e) {e.printStackTrace();}
		
	}
	
	private static MembersDAO instance = new MembersDAO();
	
	public static MembersDAO getInstance() {
		return instance;
	}
	
	//회원가입 후 데이터 넣느 메서드
	public int insertMember(MembersDTO dto) {
		int result=0;
		
		String query = "insert into Members values(?,?,?,?,?,?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setTimestamp(5, dto.getRegDate());
			pstmt.setString(6, dto.getAddress());
			result = pstmt.executeUpdate();
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		
		return result;
	}
	//현재 데이터베이스에 같은 아이디가 있는지 확인하느 메서드
	public int confirmID(String id) {
		int result=0;
		
		String query = "select id from Members where id = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {result =1;}
			else {result =0;}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		
		return result;
	}
	//아이디 비밀번호 맞는지 체크하는 메서드 (id와 pw의 매개값을 받아서 DB연결 후 id로 pw 데이터 얻어오기
	//아이디가 존재하지 않는다면 -1, 존재한다면 -> 비밀번호가 맞다면 1, 틀리다면 0
	public int userCheck(String id, String pw) {
		int result=0;
		
		String query = "select pw from Members where id=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String dbPw = rs.getString("pw");
				
				if(dbPw.equals(pw)) {result = 1;}
				else result = 0;
			}
			else {
				result = -1;
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		
		return result;
	}
	//아이디로 해당 모든 컬럼을 얻는 메서드
	public MembersDTO getMember(String id) {
		MembersDTO dto = null;
		String query="select * from members where id = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new MembersDTO();
				
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setRegDate(rs.getTimestamp("regDate"));
				dto.setAddress(rs.getString("address"));
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		
		
		return dto;
	}
	//회원정보 수정하는 메서드
	public int updateMember(MembersDTO dto) {
		int result= 0;
		
		String query = "update members set pw=?, email=?, address=? where id=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			String pw = dto.getPw();
			String email = dto.getEmail();
			String address = dto.getAddress();
			String id = dto.getId();
			
			pstmt.setString(1, pw);
			pstmt.setString(2, email);
			pstmt.setString(3, address);
			pstmt.setString(4, id);
			result=pstmt.executeUpdate();
			
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		
		return result;
		
	}
}
