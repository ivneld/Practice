package com.jsp.circle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CircleMemberDAO {
	
	//싱글톤 : 단 하나의 객체만 생성하는 것
	//싱글톤을 만들려면 클래스 외부에서 new 연산자로 생정자로 호출하지 못하도록 해야 함
	
	private CircleMemberDAO() {}
	
	private static CircleMemberDAO instance = new CircleMemberDAO();
	
	public static CircleMemberDAO getInstance() {
		return instance;
	}
	//데이터 넣는 메소드
	public int insertCircle(CircleMemberDTO dto) {
		int result =0;
		
		Connection conn = null;
		PreparedStatement pstmt=null;
		//자바에서 데이터베이스로 쿼리문을 전송할때 사용할 수 있는 인터페이스는
		//Statement와 PreparedStatement 2가지가 있다.
		
		//PreparedStatement 는 Statement를 상속받은 인터페이스
		//1. Statement 클래스의 기능향상 (여러번 수행할때 빠른속도)
		//2. 코드 안정성과 가독성이 높음
		
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "C##JSPUSER";
		String upw = "jsp123";
		
		String query = "insert into circleMember values(?,?,?,?)";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, dto.getName());	//인덱스는 1부터 시작
			pstmt.setInt(2, dto.getAge());
			pstmt.setString(3, dto.getPhone());
			pstmt.setString(4, dto.getEmail());
			result = pstmt.executeUpdate();
			//리턴결과는 행의 수
			//아무 리턴이 없다면 0
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
			}catch(Exception e2) {}
			}
		return result;
	}
	//데이터를 얻는 메소드
	public ArrayList<CircleMemberDTO> circleList(){
		ArrayList<CircleMemberDTO> list = new ArrayList<CircleMemberDTO>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String driver = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "C##JSPUSER";
		String upw = "jsp123";
		String query="select * from CircleMember";
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,uid,upw);
			pstmt = conn.prepareStatement(query);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String name=rs.getString("name");
				int age = rs.getInt("age");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				
				CircleMemberDTO dto = new CircleMemberDTO(name, age, phone, email);
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
			}catch(Exception e2) {}
		}
		return list;
	}
}
