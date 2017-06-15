package yolo.myTv.translatePoints.service;

import java.util.Date;

public class TranslatePointVO {
	private String translateId;
	private int translatePoint;
	private String sendMemberId; 
	private String receiveMemberId;
	private Date translateDate;
	private int totalPoint;
	private int sendPoint;
	private int receivePoint;
	private String memberId;
	
	
	public String getTranslateId() {
		return translateId;
	}
	public void setTranslateId(String translateId) {
		this.translateId = translateId;
	}
	public int getTranslatePoint() {
		return translatePoint;
	}
	public void setTranslatePoint(int translatePoint) {
		this.translatePoint = translatePoint;
	}
	public String getSendMemberId() {
		return sendMemberId;
	}
	public void setSendMemberId(String sendMemberId) {
		this.sendMemberId = sendMemberId;
	}
	public String getReceiveMemberId() {
		return receiveMemberId;
	}
	public void setReceiveMemberId(String receiveMemberId) {
		this.receiveMemberId = receiveMemberId;
	}
	public Date getTranslateDate() {
		return translateDate;
	}
	public void setTranslateDate(Date translateDate) {
		this.translateDate = translateDate;
	}

	public int getTotalPoint() {
		return totalPoint;
	}
	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
	}
	public int getSendPoint() {
		return sendPoint;
	}
	public void setSendPoint(int sendPoint) {
		this.sendPoint = sendPoint;
	}
	public int getRecivePoint() {
		return receivePoint;
	}
	public void setRecivePoint(int receivePoint) {
		this.receivePoint = receivePoint;
	}
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "TranslatePointVO [translateId=" + translateId
				+ ", translatePoint=" + translatePoint + ", sendMemberId="
				+ sendMemberId + ", receiveMemberId=" + receiveMemberId
				+ ", translateDate=" + translateDate + ", totalPoint="
				+ totalPoint + ", sendPoint=" + sendPoint + ", receivePoint="
				+ receivePoint + ", memberId=" + memberId + "]";
	}
	

}
