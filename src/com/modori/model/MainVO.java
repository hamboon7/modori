package com.modori.model;

public class MainVO {
	private String name;
	private String img1;
	private int price;
	private int category;
	private int pro_condition;
	private int sell_condition;
	private float total_score;
	private int num;

	public MainVO(String name, String img1, int price, int category, int pro_condition, int sell_condition,
			float total_score, int num) {
		super();
		this.name = name;
		this.img1 = img1;
		this.price = price;
		this.category = category;
		this.pro_condition = pro_condition;
		this.sell_condition = sell_condition;
		this.total_score = total_score;
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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getPro_condition() {
		return pro_condition;
	}

	public void setPro_condition(int pro_condition) {
		this.pro_condition = pro_condition;
	}

	public int getSell_condition() {
		return sell_condition;
	}

	public void setSell_condition(int sell_condition) {
		this.sell_condition = sell_condition;
	}

	public float getTotal_score() {
		return total_score;
	}

	public void setTotal_score(float total_score) {
		this.total_score = total_score;
	}
	

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	@Override
	public String toString() {
		return "MainVO [name=" + name + ", img1=" + img1 + ", price=" + price + ", category=" + category
				+ ", pro_condition=" + pro_condition + ", sell_condition=" + sell_condition + ", total_score="
				+ total_score + ", num=" + num + "]";
	}
}
