package yolo.myTv.members.service;

import java.util.Date;

public class MemberVO {
	private String memberId;
	private String password;
	private String nickName;
	private String memberName;
	private Date birthDate;
	private String email;
	private String tel;
	private int point;
	private String memberImage = "";
	private String bank;
	private String account;
	public String getMemberId() {
		return memberId;
	}
	
	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getMemberImage() {
		return memberImage;
	}
	public void setMemberImage(String memberImage) {
		this.memberImage = memberImage;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", password=" + password
				+ ", nickName=" + nickName + ", memberName=" + memberName
				+ ", birthDate=" + birthDate + ", email=" + email + ", tel="
				+ tel + ", point=" + point + ", memberImage=" + memberImage
				+ ", bank=" + bank + ", account=" + account + "]";
	}
	

}
