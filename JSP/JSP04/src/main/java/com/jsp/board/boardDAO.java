package com.jsp.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class boardDAO {

// 싱글톤 패턴으로 해보기

private static boardDAO instance = new boardDAO();

public static boardDAO getInstance() {
return instance;
}

private Connection conn;
private PreparedStatement pstmt;
private ResultSet rs;

private DataSource ds;

private boardDAO() {

try {

Context context = new InitialContext();

ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");

}catch(Exception e) {
e.printStackTrace();
}

}

private void close(Connection conn) {
if(conn != null) {
try {
conn.close();
}catch(Exception e) {
e.printStackTrace();
}
}
}

private void close(PreparedStatement pstmt) {
if(pstmt != null) {
try {
pstmt.close();
}catch(Exception e) {
e.printStackTrace();
}
}
}

private void close(ResultSet rs) {
if(rs != null) {
try {
rs.close();
}catch(Exception e) {
e.printStackTrace();
}
}
}


// 게시판 목록보여주는 메소드
public ArrayList<boardDTO> boardList(){

ArrayList<boardDTO> list = new ArrayList<boardDTO>();

String query = "select * from board order by bId DESC";

try {

conn = ds.getConnection();
pstmt = conn.prepareStatement(query);
rs = pstmt.executeQuery();

while(rs.next()) {

int bId = rs.getInt("bId");
String bName = rs.getString("bName");
String bTitle = rs.getString("bTitle");
String bContent = rs.getString("bContent");
Timestamp bDate = rs.getTimestamp("bDate");
int bHit = rs.getInt("bHit");

list.add(new boardDTO(bId, bName, bTitle, bContent, bDate, bHit));

}


}catch(Exception e) {
e.printStackTrace();
}finally {

close(rs);
close(pstmt);
close(conn);

}


return list;
}

// 글 작성후 데이터 넣는 메소드
public int write(String bName, String bTitle, String bContent) {
int result = 0;

String query = "insert into board(bId, bName, bTitle, bContent, bHit) "
+ "values (board_seq.nextval, ?, ?, ?, 0)";


try {

conn = ds.getConnection();
pstmt = conn.prepareStatement(query);

pstmt.setString(1, bName);
pstmt.setString(2, bTitle);
pstmt.setString(3, bContent);
result = pstmt.executeUpdate();

}catch(Exception e) {
e.printStackTrace();
}finally {

close(pstmt);
close(conn);

}

return result;
}

// 게시판 목록에서 제목 클릭시 해당 내용을 보여주는 메소드
public boardDTO contentView(String strID) {
boardDTO dto = null;
upHit(strID); // 조회수 증가하기

String query = "select * from board where bId = ?";

try {

conn = ds.getConnection();
pstmt = conn.prepareStatement(query);
pstmt.setInt(1, Integer.parseInt(strID));

rs = pstmt.executeQuery();

if(rs.next()) {

int bId = rs.getInt("bId");
String bName = rs.getString("bName");
String bTitle = rs.getString("bTitle");
String bContent = rs.getString("bContent");
Timestamp bDate = rs.getTimestamp("bDate");
int bHit = rs.getInt("bHit");

dto = new boardDTO(bId, bName, bTitle, bContent, bDate, bHit);

}

}catch(Exception e) {
e.printStackTrace();
}finally {

close(rs);
close(pstmt);
close(conn);

}

return dto;
}

// 조회수 증가하는 메소드
private void upHit(String strID) {

String query = "update board set bHit = bHit + 1 where bId = ?";

try {

conn = ds.getConnection();
pstmt = conn.prepareStatement(query);
pstmt.setInt(1, Integer.parseInt(strID));
pstmt.executeUpdate();

}catch(Exception e) {
e.printStackTrace();
}finally {
close(pstmt);
close(conn);
}

}

// 게시글 수정하는 메소드
public int modify(String bId, String bName, String bTitle, String bContent) {

int result = 0;

String query = "update board set bName = ?, bTitle = ?, "
+ "bContent = ? where bId = ?";

try {

conn = ds.getConnection();
pstmt = conn.prepareStatement(query);
pstmt.setString(1, bName);
pstmt.setString(2, bTitle);
pstmt.setString(3, bContent);
pstmt.setInt(4, Integer.parseInt(bId));
result = pstmt.executeUpdate();

}catch(Exception e) {
e.printStackTrace();
}finally {
close(pstmt);
close(conn);
}


return result;
}

// 게시글 삭제하는 메소드
public int delete(String bId) {

int result = 0;

String query = "delete from board where bId = ?";

try {

conn = ds.getConnection();
pstmt = conn.prepareStatement(query);
pstmt.setInt(1, Integer.parseInt(bId));
result = pstmt.executeUpdate();

}catch(Exception e) {
e.printStackTrace();
}finally {
close(pstmt);
close(conn);
}


return result;

}




}