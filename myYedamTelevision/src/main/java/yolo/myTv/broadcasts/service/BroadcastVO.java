package yolo.myTv.broadcasts.service;

import java.util.Date;

public class BroadcastVO {
	
	private int broadcastNo;
	private String broadcastTitle;
	private Date startDate;
	private String broadcastStatus;
	private String contentCode;
	private String memberId;
	private String channelId;
	private String nickName;
	private int viewerCount;
	private boolean updateCheck;
	
	public int getBroadcastNo() {
		return broadcastNo;
	}
	public void setBroadcastNo(int broadcastNo) {
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
	public String getChannelId() {
		return channelId;
	}
	public void setChannelId(String channelId) {
		this.channelId = channelId;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public int getViewerCount() {
		return viewerCount;
	}
	public void setViewerCount(int viewerCount) {
		this.viewerCount = viewerCount;
	}
	public boolean isUpdateCheck() {
		return updateCheck;
	}
	public void setUpdateCheck(boolean updateCheck) {
		this.updateCheck = updateCheck;
	}
	
	@Override
	public String toString() {
		return "BroadcastVO [broadcastNo=" + broadcastNo + ", broadcastTitle="
				+ broadcastTitle + ", startDate=" + startDate
				+ ", broadcastStatus=" + broadcastStatus + ", contentCode="
				+ contentCode + ", memberId=" + memberId + ", channelId="
				+ channelId + ", viewerCount=" + viewerCount + ", updateCheck="
				+ updateCheck + "]";
	}
	
}
