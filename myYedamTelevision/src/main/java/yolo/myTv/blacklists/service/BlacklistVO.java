package yolo.myTv.blacklists.service;

public class BlacklistVO {

	private int broadcastNo;
	private String memberId;
	private String nickName;
	private String registDate;
	
	public int getBroadcastNo() {
		return broadcastNo;
	}
	public void setBroadcastNo(int broadcastNo) {
		this.broadcastNo = broadcastNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getRegistDate() {
		return registDate;
	}
	public void setRegistDate(String registDate) {
		this.registDate = registDate;
	}
	
	@Override
	public String toString() {
		return "BlacklistVO [broadcastNo=" + broadcastNo + ", memberId="
				+ memberId + ", nickName=" + nickName + ", registDate="
				+ registDate + "]";
	}
	
}
