package yolo.myTv.broadcasts.service;

import java.util.Date;

public class BroadcastVO {
	
	private String broadcastNo;
	private String broadcastTitle;
	private Date startDate;
	private String broadcastStatus;
	private String contentCode;
	private String memberId;
	
	public String getBroadcastNo() {
		return broadcastNo;
	}
	public void setBroadcastNo(String broadcastNo) {
		this.broadcastNo = broadcastNo;
	}
	public String getBroadcastTitle() {
		return broadcastTitle;
	}
	public void setBroadcastTitle(String broadcastTitle) {
		this.broadcastTitle = broadcastTitle;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public String getBroadcastStatus() {
		return broadcastStatus;
	}
	public void setBroadcastStatus(String broadcastStatus) {
		this.broadcastStatus = broadcastStatus;
	}
	public String getContentCode() {
		return contentCode;
	}
	public void setContentCode(String contentCode) {
		this.contentCode = contentCode;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "BroadcastVO [braodcastNo=" + broadcastNo + ", broadcastTitle="
				+ broadcastTitle + ", startDate=" + startDate
				+ ", broadcastStatus=" + broadcastStatus + ", contentCode="
				+ contentCode + ", memberId=" + memberId + "]";
	}
	
}
