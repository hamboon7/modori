package com.modori.model;

public class AccountVO {
	private int num;
	private String stu_name;
	private String pro_name;
	private int price;
	private int sale;
	private String deal;
	private String bank;
	private String account;
	
	public AccountVO(int num, String stu_name, String pro_name, int price, int sale, String deal, String bank, String account) {
		super();
		this.num = num;
		this.stu_name = stu_name;
		this.pro_name = pro_name;
		this.price = price;
		this.sale = sale;
		this.deal = deal;
		this.bank = bank;
		this.account = account;
	}
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getStu_name() {
		return stu_name;
	}

	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getSale() {
		return sale;
	}

	public void setSale(int sale) {
		this.sale = sale;
	}

	public String getDeal() {
		return deal;
	}

	public void setDeal(String deal) {
		this.deal = deal;
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
		return "num=" + num + ", stu_name=" + stu_name + ", pro_name=" + pro_name + ", price=" + price + ", sale=" + sale
				+ ", deal=" + deal + ", bank=" + bank + ", account=" + account;
	}

	
	
}
