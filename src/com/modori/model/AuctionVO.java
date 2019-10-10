package com.modori.model;

public class AuctionVO {
	private int auction_num;
	private int student_num;
	private String product_name;
	private String auction_img;
	private int start_price;
	private int unit_price;
	private float total_score;
	
	public AuctionVO(int auction_num, int student_num, String product_name, String auction_img, int start_price,
			int unit_price, float total_score) {
		super();
		this.auction_num = auction_num;
		this.student_num = student_num;
		this.product_name = product_name;
		this.auction_img = auction_img;
		this.start_price = start_price;
		this.unit_price = unit_price;
		this.total_score = total_score;
	}

	public int getAuction_num() {
		return auction_num;
	}

	public void setAuction_num(int auction_num) {
		this.auction_num = auction_num;
	}

	public int getStudent_num() {
		return student_num;
	}

	public void setStudent_num(int student_num) {
		this.student_num = student_num;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getAuction_img() {
		return auction_img;
	}

	public void setAuction_img(String auction_img) {
		this.auction_img = auction_img;
	}

	public int getStart_price() {
		return start_price;
	}

	public void setStart_price(int start_price) {
		this.start_price = start_price;
	}

	public int getUnit_price() {
		return unit_price;
	}

	public void setUnit_price(int unit_price) {
		this.unit_price = unit_price;
	}

	public float getTotal_score() {
		return total_score;
	}

	public void setTotal_score(float total_score) {
		this.total_score = total_score;
	}

	@Override
	public String toString() {
		return "auction_num=" + auction_num + ", student_num=" + student_num + ", product_name="
				+ product_name + ", auction_img=" + auction_img + ", start_price=" + start_price + ", unit_price="
				+ unit_price + ", total_score=" + total_score;
	}
	
	
}
