package com.modori.model;

import java.util.Date;

public class StudentCouncilBookVO {
	private int allCount;
	private int allRental;
	private int allBooking;
	private int allReturn;
	private int allDamage;
	private int reservation_num;
	private int book_num;
	private int stu_num;
	private Date rental_date;
	private Date return_date;
	private int book_condition;
	private String book_name;
	private String book_img;
	private int book_enroll_condition;
	
	public StudentCouncilBookVO(int allCount, int allRental, int allBooking, int allReturn, int allDamage,
			int reservation_num, int book_num, int stu_num, Date rental_date, Date return_date, int book_condition,
			String book_name, String book_img, int book_enroll_condition) {
		super();
		this.allCount = allCount;
		this.allRental = allRental;
		this.allBooking = allBooking;
		this.allReturn = allReturn;
		this.allDamage = allDamage;
		this.reservation_num = reservation_num;
		this.book_num = book_num;
		this.stu_num = stu_num;
		this.rental_date = rental_date;
		this.return_date = return_date;
		this.book_condition = book_condition;
		this.book_name = book_name;
		this.book_img = book_img;
		this.book_enroll_condition = book_enroll_condition;
	}

	public int getAllCount() {
		return allCount;
	}

	public void setAllCount(int allCount) {
		this.allCount = allCount;
	}

	public int getAllRental() {
		return allRental;
	}

	public void setAllRental(int allRental) {
		this.allRental = allRental;
	}

	public int getAllBooking() {
		return allBooking;
	}

	public void setAllBooking(int allBooking) {
		this.allBooking = allBooking;
	}

	public int getAllReturn() {
		return allReturn;
	}

	public void setAllReturn(int allReturn) {
		this.allReturn = allReturn;
	}

	public int getAllDamage() {
		return allDamage;
	}

	public void setAllDamage(int allDamage) {
		this.allDamage = allDamage;
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

	public int getBook_enroll_condition() {
		return book_enroll_condition;
	}

	public void setBook_enroll_condition(int book_enroll_condition) {
		this.book_enroll_condition = book_enroll_condition;
	}

	@Override
	public String toString() {
		return "allCount=" + allCount + ", allRental=" + allRental + ", allBooking=" + allBooking
				+ ", allReturn=" + allReturn + ", allDamage=" + allDamage + ", reservation_num=" + reservation_num
				+ ", book_num=" + book_num + ", stu_num=" + stu_num + ", rental_date=" + rental_date + ", return_date="
				+ return_date + ", book_condition=" + book_condition + ", book_name=" + book_name + ", book_img="
				+ book_img + ", book_enroll_condition=" + book_enroll_condition;
	}
	
	
}
