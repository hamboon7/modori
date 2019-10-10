package com.modori.model;

import java.util.Date;

public class RentalBookVO {
	private int reservation_num;
	private int book_num; 
	private int stu_num;
	private Date rental_date;
	private Date return_date;
	private int book_condition;
	private float total_score;
	
	public RentalBookVO(int reservation_num, int book_num, int stu_num, Date rental_date, Date return_date,
			int book_condition, float total_score) {
		super();
		this.reservation_num = reservation_num;
		this.book_num = book_num;
		this.stu_num = stu_num;
		this.rental_date = rental_date;
		this.return_date = return_date;
		this.book_condition = book_condition;
		this.total_score = total_score;
	}

	public int getReservation_num() {
		return reservation_num;
	}

	public void setReservation_num(int reservation_num) {
		this.reservation_num = reservation_num;
	}

	public int getBook_num() {
		return book_num;
	}

	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}

	public int getStu_num() {
		return stu_num;
	}

	public void setStu_num(int stu_num) {
		this.stu_num = stu_num;
	}

	public Date getRental_date() {
		return rental_date;
	}

	public void setRental_date(Date rental_date) {
		this.rental_date = rental_date;
	}

	public Date getReturn_date() {
		return return_date;
	}

	public void setReturn_date(Date return_date) {
		this.return_date = return_date;
	}

	public int getBook_condition() {
		return book_condition;
	}

	public void setBook_condition(int book_condition) {
		this.book_condition = book_condition;
	}

	public float getTotal_score() {
		return total_score;
	}

	public void setTotal_score(float total_score) {
		this.total_score = total_score;
	}

	@Override
	public String toString() {
		return "reservation_num=" + reservation_num + ", book_num=" + book_num + ", stu_num=" + stu_num
				+ ", rental_date=" + rental_date + ", return_date=" + return_date + ", book_condition=" + book_condition
				+ ", total_score=" + total_score;
	}
	
	
}
