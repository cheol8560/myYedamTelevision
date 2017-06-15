package yolo.myTv.exchanges.service;

import java.util.Date;

public class ExchangeVO {
	private String exchangeNo;
	private Date requestDate;
	private int requestPoint;
	private int realReceipt;
	private int commission;
	private Date approveDate;
	private String approveStatus;
	private String memberId;
	
	public String getExchangeNo() {
		return exchangeNo;
	}
	public void setExchangeNo(String exchangeNo) {
		this.exchangeNo = exchangeNo;
	}
	public Date getRequestDate() {
		return requestDate;
	}
	public void setRequestDate(Date requestDate) {
		this.requestDate = requestDate;
	}
	public int getRequestPoint() {
		return requestPoint;
	}
	public void setRequestPoint(int requestPoint) {
		this.requestPoint = requestPoint;
	}
	public int getRealReceipt() {
		return realReceipt;
	}
	public void setRealReceipt(int realReceipt) {
		this.realReceipt = realReceipt;
	}
	public int getCommission() {
		return commission;
	}
	public void setCommission(int commission) {
		this.commission = commission;
	}
	public Date getApproveDate() {
		return approveDate;
	}
	public void setApproveDate(Date approveDate) {
		this.approveDate = approveDate;
	}
	public String getApproveStatus() {
		return approveStatus;
	}
	public void setApproveStatus(String approveStatus) {
		this.approveStatus = approveStatus;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "ExchangeVO [exchangeNo=" + exchangeNo + ", requestDate="
				+ requestDate + ", requestPoint=" + requestPoint
				+ ", realReceipt=" + realReceipt + ", commission=" + commission
				+ ", approveDate=" + approveDate + ", approveStatus="
				+ approveStatus + ", memberId=" + memberId + "]";
	}
	
	
	
	
}
