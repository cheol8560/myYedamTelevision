package yolo.myTv.translatePoints.service;

public class TransVO {
	
	private int inTranslatePoint;
	private String inSendMemberId;
	private String inReceiveMemberId;
	private int outErrorcode;
	private String outMessage;
	
	public int getInTranslatePoint() {
		return inTranslatePoint;
	}
	public void setInTranslatePoint(int inTranslatePoint) {
		this.inTranslatePoint = inTranslatePoint;
	}
	public String getInSendMemberId() {
		return inSendMemberId;
	}
	public void setInSendMemberId(String inSendMemberId) {
		this.inSendMemberId = inSendMemberId;
	}
	public String getInReceiveMemberId() {
		return inReceiveMemberId;
	}
	public void setInReceiveMemberId(String inReceiveMemberId) {
		this.inReceiveMemberId = inReceiveMemberId;
	}
	public int getOutErrorcode() {
		return outErrorcode;
	}
	public void setOutErrorcode(int outErrorcode) {
		this.outErrorcode = outErrorcode;
	}
	public String getOutMessage() {
		return outMessage;
	}
	public void setOutMessage(String outMessage) {
		this.outMessage = outMessage;
	}
	
	
	@Override
	public String toString() {
		return "TransVO [inTranslatePoint=" + inTranslatePoint
				+ ", inSendMemberId=" + inSendMemberId + ", inReceiveMemberId="
				+ inReceiveMemberId + ", outErrorcode=" + outErrorcode
				+ ", outMessage=" + outMessage + "]";
	}
	
	
}
