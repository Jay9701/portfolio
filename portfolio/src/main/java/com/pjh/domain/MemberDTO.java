package com.pjh.domain;

public class MemberDTO {
	private Integer mno;
	private String id;
	private String pw;
	private String name;
	private String birth;
	private String gender;
	private String tel;
	private String email;
	private String nickName;
	
	public Integer getMno() {
		return mno;
	}
	public void setMno(Integer mno) {
		this.mno = mno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [mno=" + mno + ", id=" + id + ", pw=" + pw + ", name=" + name + ", birth=" + birth
				+ ", gender=" + gender + ", tel=" + tel + ", email=" + email + ", nickName=" + nickName + "]";
	}
	
}
