package yolo.myTv.members.service;

import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@XmlAccessorType(XmlAccessType.FIELD)
public class MemberVO {
	private String memberId;
	private String password;
	private String nickName;
	private String memberName;
	private Date birthDate;
	private String email;
	private String tel;
	private int point;
	
	private int cnt;
	
	
	@XmlTransient
	private MultipartFile uploadFile;
	private String bank;
	private String account;
	@XmlTransient
	private String memberImage;
	public String getMemberId() {
		return memberId;
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
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
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
	@JsonIgnore
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
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
	@JsonIgnore
	public String getMemberImage() {
		return memberImage;
	}
	public void setMemberImage(String memberImage) {
		this.memberImage = memberImage;
	}
	
	
	
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", password=" + password
				+ ", nickName=" + nickName + ", memberName=" + memberName
				+ ", birthDate=" + birthDate + ", email=" + email + ", tel="
				+ tel + ", point=" + point + ", cnt=" + cnt + ", uploadFile="
				+ uploadFile + ", bank=" + bank + ", account=" + account
				+ ", memberImage=" + memberImage + "]";
	}
	
	


}
