package yolo.myTv.comments.service;

public class Comments {
	

	String commentNO; //댓글번호
	String memberId;		//작성자
	String commentText;	//내용
	String writeDate;	//댓글작성일자
	String boardNo;	//글번호
	
	
	public String getCommentNO() {
		return commentNO;
	}
	public void setCommentNO(String commentNO) {
		this.commentNO = commentNO;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getCommentText() {
		return commentText;
	}
	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(String boardNo) {
		this.boardNo = boardNo;
	}
	
	


	
	
}
