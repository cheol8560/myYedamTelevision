package yolo.myTv.comments.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CommentsDAO extends DAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	static CommentsDAO instance;

	public static CommentsDAO getInstance() {
		if (instance != null)
			return instance;
		else
			return new CommentsDAO();
	}

	// 댓글목록
	public List<HashMap<String, Object>> selectAll(String boardNo) throws Exception {
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		try {
			conn = connect();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from COMMENTS where boardNo="+boardNo+" order by commentNo ");
			
			while (rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("commentNo", rs.getString("commentNo"));
				map.put("memberId", rs.getString("memberId"));
				map.put(("commentText"), rs.getString("commentText"));
				map.put("writeDate", rs.getString("writeDate"));
				map.put("boardNo", rs.getString("boardNo"));
				list.add(map);
			}
		} catch (Throwable e) {
			System.out.println("comments selectAll error" + e.getMessage());
			throw new Exception(e.getMessage());
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return list;
	}// end of method

	//댓글 수정
	public HashMap<String, Object> update(Comments bean) throws Exception {
		PreparedStatement pstmtCommentInsert = null;
		
		try {
			conn = connect();
			conn.setAutoCommit(false);   //트랜잭션 처리
			String sql ="update COMMENTS set  commentText=?, writeDate=sysdate where commentNO=? "; 
			pstmtCommentInsert = conn.prepareStatement(sql);
			//pstmtCommentInsert.setString(1, bean.getWriter());
			pstmtCommentInsert.setString(1, bean.getCommentText());
			pstmtCommentInsert.setString(2, bean.getCommentText());
			pstmtCommentInsert.executeUpdate();
			conn.commit();   // 커밋
			
			sql="select * from COMMENTS where commentNO=?";
			pstmt = conn.prepareStatement(sql) ;
			pstmt.setString(1, bean.getCommentText());
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("commentNO", rs.getString("commentNO"));
			map.put("memberId",  rs.getString("memberId"));
			map.put(("commentText"), rs.getString("commentText"));
			map.put("writeDate", rs.getString("writeDate"));
			
			return map;
		} catch (Throwable e) {
			try {
				conn.rollback();  //롤백
			} catch (SQLException ex) {
			}
			throw new Exception(e.getMessage());
		} finally {
			conn.close();
		}
	}	

	//댓글삭제
	public HashMap<String, Object> delete(Comments bean) throws Exception {
		PreparedStatement pstmtCommentInsert = null;
		try {
			conn = connect();
			conn.setAutoCommit(false);   //트랜잭션 처리
			String sql ="delete COMMENTS where commentNO=? "; 
			pstmtCommentInsert = conn.prepareStatement(sql);
			pstmtCommentInsert.setString(1, bean.getCommentNO());
			pstmtCommentInsert.executeUpdate();
			conn.commit();   // 커밋
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("commentNo", bean.getCommentNO()); 
			return map;
		} catch (Throwable e) {
			try {
				conn.rollback();  //롤백
			} catch (SQLException ex) {
			}
			throw new Exception(e.getMessage());
		} finally {
			conn.close();
		}
	}		
	
	//댓글등록
	public HashMap<String, Object> insert(Comments bean) throws Exception {
		Statement stmtIdSelect = null;
		ResultSet rsIdSelect = null;
		PreparedStatement pstmtIdUpdate = null;
		PreparedStatement pstmtCommentInsert = null;
		String date=null;
		int nextcommentNo = 0;
		try {
			conn = connect();
			conn.setAutoCommit(false);   //트랜잭션 처리
			stmtIdSelect = conn.createStatement();
			rsIdSelect = stmtIdSelect.executeQuery("SELECT NVL(MAX(commentNo), 0) + 1 FROM COMMENTS");
			if (rsIdSelect.next()) {
				nextcommentNo = rsIdSelect.getInt("VALUE");
				date=rsIdSelect.getString(2);
				System.out.println(date);
			}
			nextcommentNo++;  //시퀀스 용도
			pstmtCommentInsert = conn.prepareStatement("insert into COMMENTS(commentNo, memberId, commentText, writeDate, boardNo) values (?, ?, ?, sysdate, ?)");
			pstmtCommentInsert.setInt(1, nextcommentNo);
			pstmtCommentInsert.setString(2, bean.getMemberId());
			pstmtCommentInsert.setString(3, bean.getCommentText());
			
			pstmtCommentInsert.setString(4, bean.getBoardNo());
			pstmtCommentInsert.executeUpdate();
			conn.commit();   // 커밋
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("commentNo", nextcommentNo);
			map.put("memberId", bean.getMemberId());
			map.put(("commentText"), bean.getCommentText());
			map.put("writeDate", date);
			map.put("boardNo", bean.getBoardNo());
			return map;
		} catch (Throwable e) {
			try {
				conn.rollback();  //롤백
			} catch (SQLException ex) {
			}
			throw new Exception(e.getMessage());
		}
	}
	
	public void deletes(String boardNo)  {
		PreparedStatement pstmtCommentInsert = null;
		try {
			conn = connect();
			conn.setAutoCommit(false);   //트랜잭션 처리
			String sql ="delete COMMENTS where boardNo=? "; 
			pstmtCommentInsert = conn.prepareStatement(sql);
			pstmtCommentInsert.setString(1, boardNo);
			pstmtCommentInsert.executeUpdate();
			conn.commit();   // 커밋

		} catch (Throwable e) {
			try {
				conn.rollback();  //롤백
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}		
	
}// end of class
