package com.modori.model;

public class MypageProductVO {
	private int num;
	private String name;
	private String img1;
	private String img2;
	private String img3;
	private int stu_seller_num;
	private int stu_buyer_num;
	private int price;
	private String category;
	private String pro_condition;
	private String sell_condition;
	private String deal;
	private String comment;
	private String buyer_condition;
	private String seller_condition;
	private float total_score;
	
	public MypageProductVO(int num, String name, String img1, String img2, String img3, int stu_seller_num,
			int stu_buyer_num, int price, String category, String pro_condition, String sell_condition, String deal,
			String comment, String buyer_condition, String seller_condition, float total_score) {
		super();
		this.num = num;
		this.name = name;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.stu_seller_num = stu_seller_num;
		this.stu_buyer_num = stu_buyer_num;
		this.price = price;
		this.category = category;
		this.pro_condition = pro_condition;
		this.sell_condition = sell_condition;
		this.deal = deal;
		this.comment = comment;
		this.buyer_condition = buyer_condition;
		this.seller_condition = seller_condition;
		this.total_score = total_score;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public int getStu_seller_num() {
		return stu_seller_num;
	}

	public void setStu_seller_num(int stu_seller_num) {
		this.stu_seller_num = stu_seller_num;
	}

	public int getStu_buyer_num() {
		return stu_buyer_num;
	}

	public void setStu_buyer_num(int stu_buyer_num) {
		this.stu_buyer_num = stu_buyer_num;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPro_condition() {
		return pro_condition;
	}

	public void setPro_condition(String pro_condition) {
		this.pro_condition = pro_condition;
	}

	public String getSell_condition() {
		return sell_condition;
	}

	public void setSell_condition(String sell_condition) {
		this.sell_condition = sell_condition;
	}

	public String getDeal() {
		return deal;
	}

	public void setDeal(String deal) {
		this.deal = deal;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getBuyer_condition() {
		return buyer_condition;
	}

	public void setBuyer_condition(String buyer_condition) {
		this.buyer_condition = buyer_condition;
	}

	public String getSeller_condition() {
		return seller_condition;
	}

	public void setSeller_condition(String seller_condition) {
		this.seller_condition = seller_condition;
	}

	public float getTotal_score() {
		return total_score;
	}

	public void setTotal_score(float total_score) {
		this.total_score = total_score;
	}

	@Override
	public String toString() {
		return "num=" + num + ", name=" + name + ", img1=" + img1 + ", img2=" + img2 + ", img3=" + img3
				+ ", stu_seller_num=" + stu_seller_num + ", stu_buyer_num=" + stu_buyer_num + ", price=" + price
				+ ", category=" + category + ", pro_condition=" + pro_condition + ", sell_condition=" + sell_condition
				+ ", deal=" + deal + ", comment=" + comment + ", buyer_condition=" + buyer_condition
				+ ", seller_condition=" + seller_condition + ", total_score=" + total_score;
	}

	
	
}
