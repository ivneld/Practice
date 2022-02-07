package com.jsp.dbcp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class KGMemberDAO {
	private DataSource  ds;
	//Connection pool을 관리하는 객체
	//JNDI : Java Naming & Directory Interface
	//"이름"을 가지고 데이터베이스의 정보를 얻을 수 있는 API
	
	public KGMemberDAO() {
		
		try {
			Context context = new InitialContext();
			//리소스가 로컬에 있을 경우에는 InitialContext를 생성하는 것만으로 JNDI를 사용할 수 있다.
			ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			//java:comp/env는 톰켓에서 리소스를 관리하는 가상의 주소
			
			
		}catch(Exception e) {e.printStackTrace();}
	}
	
	public ArrayList<KGMemberDTO> memberList(){
		ArrayList<KGMemberDTO> list = new ArrayList<KGMemberDTO>();
		
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement("select * from KGMember");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String id= rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String phone = rs.getString("phone");
				
				list.add(new KGMemberDTO(id,pw,name,age,phone));
			}
		}catch(Exception e) {e.printStackTrace();}
		finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
				
			}catch(Exception e2) {}
		}
		return list;
	}
}
