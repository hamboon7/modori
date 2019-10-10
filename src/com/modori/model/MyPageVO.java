package com.modori.model;

public class MyPageVO {
	private int stu_num;
	private String pw;
	private String name;
	private String phon;
	private String email;
	private String department;
	private float total_score;
	private String bank;
	private String account;
	
	public MyPageVO(int stu_num, String pw, String name, String phon, String email, String department,
			float total_score, String bank, String account) {
		super();
		this.stu_num = stu_num;
		this.pw = pw;
		this.name = name;
		this.phon = phon;
		this.email = email;
		this.department = department;
		this.total_score = total_score;
		this.bank = bank;
		this.account = account;
	}

	public int getStu_num() {
		return stu_num;
	}

	public void setStu_num(int stu_num) {
		this.stu_num = stu_num;
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

	public String getPhon() {
		return phon;
	}

	public void setPhon(String phon) {
		this.phon = phon;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public float getTotal_score() {
		return total_score;
	}

	public void setTotal_score(float total_score) {
		this.total_score = total_score;
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
		return "stu_num=" + stu_num + ", pw=" + pw + ", name=" + name + ", phon=" + phon + ", email=" + email
				+ ", department=" + department + ", total_score=" + total_score + ", bank=" + bank + ", account="
				+ account;
	}

	
}
