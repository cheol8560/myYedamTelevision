package yolo.myTv.contents.service;

public class ContentVO {


	private int contentCode;
	private String contentName;
	private String contentIcon;
	private String contentIntro;
	
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
	@Override
	public String toString() {
		return "ContentsVO [contentCode=" + contentCode + ", contentName="
				+ contentName + ", contentIcon=" + contentIcon
				+ ", contentIntro=" + contentIntro + "]";
	}
	
	
}
