package com.modori.model;

public class GroupBuyingVO {
	private int groupBuying_num;
	private int student_num;
	private String product_name;
	private String groupBuying_img;
	private int price;
	private String comment;
	private float total_score;
	
	public GroupBuyingVO(int groupBuying_num, int student_num, String product_name, String groupBuying_img, int price, String comment,
			float total_score) {
		super();
		this.groupBuying_num = groupBuying_num;
		this.student_num = student_num;
		this.product_name = product_name;
		this.groupBuying_img = groupBuying_img;
		this.price = price;
		this.comment = comment;
		this.total_score = total_score;
	}

	public int getGroupBuying_num() {
		return groupBuying_num;
	}

	public void setGroupBuying_num(int groupBuying_num) {
		this.groupBuying_num = groupBuying_num;
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

	public String getGroupBuying_img() {
		return groupBuying_img;
	}

	public void setGroupBuying_img(String groupBuying_img) {
		this.groupBuying_img = groupBuying_img;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public float getTotal_score() {
		return total_score;
	}

	public void setTotal_score(float total_score) {
		this.total_score = total_score;
	}

	@Override
	public String toString() {
		return "groupBuying_num=" + groupBuying_num + ", student_num=" + student_num + ", product_name="
				+ product_name + ", groupBuying_img=" + groupBuying_img + ", price=" + price + ", comment=" + comment
				+ ", total_score=" + total_score;
	}

	
}
