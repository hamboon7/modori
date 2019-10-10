package com.modori.model;

import java.util.Date;

public class BookVO {
	private int book_num;
	private int stu_num; 
	private String book_name;
	private String book_img;
	private int category;
	private Date date; 
	private int book_enroll_condition;
	private float total_score;
	
	public BookVO(int book_num, int stu_num, String book_name, String book_img, int category, Date date,
			int book_enroll_condition, float total_score) {
		super();
		this.book_num = book_num;
		this.stu_num = stu_num;
		this.book_name = book_name;
		this.book_img = book_img;
		this.category = category;
		this.date = date;
		this.book_enroll_condition = book_enroll_condition;
		this.total_score = total_score;
	}

	public int getBook_num() {
		return book_num;
	}

	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}

	public int getstu_num() {
		return stu_num;
	}

	public void setstu_num(int stu_num) {
		this.stu_num = stu_num;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getBook_img() {
		return book_img;
	}

	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getBook_enroll_condition() {
		return book_enroll_condition;
	}

	public void setBook_enroll_condition(int book_enroll_condition) {
		this.book_enroll_condition = book_enroll_condition;
	}

	public float getTotal_score() {
		return total_score;
	}

	public void setTotal_score(float total_score) {
		this.total_score = total_score;
	}

	@Override
	public String toString() {
		return "book_num=" + book_num + ", stu_num=" + stu_num + ", book_name=" + book_name
				+ ", book_img=" + book_img + ", category=" + category + ", date=" + date + ", book_enroll_condition="
				+ book_enroll_condition + ", total_score=" + total_score;
	}
	
	
}
