package yolo.myTv.translatePoints.service;

import java.util.Date;

public class TranslatePointVO {
	private String translateId;
	private int translatePoint;
	private String sendMemberId; 
	private String receiveMemberId;
	private Date translateDate;
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
	@Override
	public String toString() {
		return "TranslatePointVO [translateId=" + translateId
				+ ", translatePoint=" + translatePoint + ", sendMemberId="
				+ sendMemberId + ", receiveMemberId=" + receiveMemberId
				+ ", translateDate=" + translateDate + "]";
	}
	

}
