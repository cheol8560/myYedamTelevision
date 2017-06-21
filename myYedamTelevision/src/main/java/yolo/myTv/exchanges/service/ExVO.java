package yolo.myTv.exchanges.service;

public class ExVO {
	private String inAccount;
	private int inRequestPoint;
	private String inMemberId;
	private String inBank;
	private int exchangeNo;
	

	public int getExchangeNo() {
		return exchangeNo;
	}
	public void setExchangeNo(int exchangeNo) {
		this.exchangeNo = exchangeNo;
	}
	public String getInAccount() {
		return inAccount;
	}
	public void setInAccount(String inAccount) {
		this.inAccount = inAccount;
	}
	public int getInRequestPoint() {
		return inRequestPoint;
	}
	public void setInRequestPoint(int inRequestPoint) {
		this.inRequestPoint = inRequestPoint;
	}
	public String getInMemberId() {
		return inMemberId;
	}
	public void setInMemberId(String inMemberId) {
		this.inMemberId = inMemberId;
	}
	public String getInBank() {
		return inBank;
	}
	public void setInBank(String inBank) {
		this.inBank = inBank;
	}
	@Override
	public String toString() {
		return "ExVO [inAccount=" + inAccount + ", inRequestPoint="
				+ inRequestPoint + ", inMemberId=" + inMemberId + ", inBank="
				+ inBank + ", exchangeNo=" + exchangeNo + "]";
	}
	
	
	
}
