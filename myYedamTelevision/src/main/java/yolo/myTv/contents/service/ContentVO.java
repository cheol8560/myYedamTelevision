package yolo.myTv.contents.service;

public class ContentVO {


	private int contentCode;
	private String contentName;
	private String contentIcon;
	private String contentIntro;
	private int inContentCode;
	private int outErrorcode;
	private String outMessage;
	public int getContentCode() {
		return contentCode;
	}
	public void setContentCode(int contentCode) {
		this.contentCode = contentCode;
	}
	public String getContentName() {
		return contentName;
	}
	public void setContentName(String contentName) {
		this.contentName = contentName;
	}
	public String getContentIcon() {
		return contentIcon;
	}
	public void setContentIcon(String contentIcon) {
		this.contentIcon = contentIcon;
	}
	public String getContentIntro() {
		return contentIntro;
	}
	public void setContentIntro(String contentIntro) {
		this.contentIntro = contentIntro;
	}
	public int getInContentCode() {
		return inContentCode;
	}
	public void setInContentCode(int inContentCode) {
		this.inContentCode = inContentCode;
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
		return "ContentVO [contentCode=" + contentCode + ", contentName="
				+ contentName + ", contentIcon=" + contentIcon
				+ ", contentIntro=" + contentIntro + ", inContentCode="
				+ inContentCode + ", outErrorcode=" + outErrorcode
				+ ", outMessage=" + outMessage + "]";
	}
	

	
	
}
