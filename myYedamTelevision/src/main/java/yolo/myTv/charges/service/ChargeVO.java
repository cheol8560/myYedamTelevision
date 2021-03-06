package yolo.myTv.charges.service;

import java.util.Date;

import yolo.myTv.util.SearchDefaultVO;

public class ChargeVO extends  SearchDefaultVO{
	private int chargeNo;
	private Date requestDate;
	private String paymentWay;
	private int chargeMoney;
	private int chargePoint;
	private Date approveDate;
	private String approveStatus;
	private String memberId;
	private String approveStatusName;
	private String paymentWayName;
	
	
	
	public String getPaymentWayName() {
		return paymentWayName;
	}
	public void setPaymentWayName(String paymentWayName) {
		this.paymentWayName = paymentWayName;
	}
	public String getApproveStatusName() {
		return approveStatusName;
	}
	public void setApproveStatusName(String approveStatusName) {
		this.approveStatusName = approveStatusName;
	}
	public int getChargeNo() {
		return chargeNo;
	}
	public void setChargeNo(int chargeNo) {
		this.chargeNo = chargeNo;
	}
	public Date getRequestDate() {
		return requestDate;
	}
	public void setRequestDate(Date requestDate) {
		this.requestDate = requestDate;
	}
	public String getPaymentWay() {
		return paymentWay;
	}
	public void setPaymentWay(String paymentWay) {
		this.paymentWay = paymentWay;
	}
	public int getChargePoint() {
		return chargePoint;
	}
	public void setChargePoint(int chargePoint) {
		this.chargePoint = chargePoint;
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
	
	public int getChargeMoney() {
		return chargeMoney;
	}
	public void setChargeMoney(int chargeMoney) {
		this.chargeMoney = chargeMoney;
	}
	@Override
	public String toString() {
		return "ChargeVO [chargeNo=" + chargeNo + ", requestDate=" + requestDate
				+ ", paymentWay=" + paymentWay + ", chargeMoney=" + chargeMoney
				+ ", chargePoint=" + chargePoint + ", approveDate="
				+ approveDate + ", approveStatus=" + approveStatus
				+ ", memberId=" + memberId + "]";
	}
	
}
