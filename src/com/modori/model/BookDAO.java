package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

public class BookDAO {
	private Connection conn;

	public BookDAO() {
		try {
			String cs = "com.mysql.jdbc.Driver";
			Class.forName(cs); 

			String url = "jdbc:mysql://localhost:3306/modori?useSSL=false&characterEncoding=utf-8";
			String id = "root";
			String pw = "qwer1234";
			conn = DriverManager.getConnection(url, id, pw);

		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Collection<BookVO> bookCon() {
		Collection<BookVO> list=new ArrayList<>();
		try { 
			String sql =  "select b.book_num, b.stu_num, b.book_name, b.book_img, b.category, b.date, b.book_enroll_condition, s.total_score" + 
					" from book_enroll AS b" + 
					" JOIN student AS s" + 
					" ON b.stu_num = s.stu_num" +
					" order by b.book_num desc";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new BookVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), 
						   rs.getInt(5), rs.getDate(6), rs.getInt(7), rs.getFloat(8)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public boolean bookEnroll(int stu_num, String name, int category, String book_img) {
		try {
			String sql = "insert into book_enroll(stu_num, book_name, book_img, category, date, book_enroll_condition) values (?, ?, ?, ?, now(), 0)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, stu_num);
			pstmt.setString(2, name);
			pstmt.setString(3, book_img);
			pstmt.setInt(4, category);

			int num = pstmt.executeUpdate();
			if (num==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean rentalEnroll(int num, int stu_num, Date rental_date, Date return_date) {
		try {
			String sql = "insert into book(book_num, stu_num, rental_date, return_date, book_condition) values (?, ?, ?, ?, 1)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, stu_num);
			pstmt.setDate(3, new java.sql.Date(rental_date.getTime()));
			pstmt.setDate(4, new java.sql.Date(return_date.getTime()));

			int ps = pstmt.executeUpdate();
			if (ps==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean bookingEnroll(int num, int stu_num, Date rental_date, Date return_date) {
		try {
			String sql = "insert into book(book_num, stu_num, rental_date, return_date, book_condition) values (?, ?, ?, ?, 2)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, stu_num);
			pstmt.setDate(3, new java.sql.Date(rental_date.getTime()));
			pstmt.setDate(4, new java.sql.Date(return_date.getTime()));

			int ps = pstmt.executeUpdate();
			if (ps==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Collection<BookVO> rentalBookCon(int num) {
		Collection<BookVO> list=new ArrayList<>();
		try { 
			String sql =  "select b.book_num, b.stu_num, b.book_name, b.book_img, b.category, b.date, b.book_enroll_condition, s.total_score" + 
					" from book_enroll AS b" + 
					" JOIN student AS s" + 
					" ON b.stu_num = s.stu_num" +
					" where b.book_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new BookVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), 
						   rs.getInt(5), rs.getDate(6), rs.getInt(7), rs.getFloat(8)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public Collection<RentalBookVO> rentalBookingCon(int num) {
		Collection<RentalBookVO> list=new ArrayList<>();
		try { 
			String sql = "select b.reservation_num, b.book_num, b.stu_num, b.rental_date, b.return_date, b.book_condition, s.total_score" + 
					" from book AS b" + 
					" JOIN student AS s" + 
					" ON b.stu_num = s.stu_num" +
					" where b.book_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new RentalBookVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4), 
						   rs.getDate(5), rs.getInt(6), rs.getFloat(7)));

			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public boolean rentalBookUpdateCon(int num) {
		try {
			String sql = "UPDATE book_enroll SET book_enroll_condition=1 WHERE book_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int ps = pstmt.executeUpdate();
			if (ps==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean bookUpdateCon(int num) {
		try {
			String sql = "UPDATE book_enroll SET book_enroll_condition=2 WHERE book_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int ps = pstmt.executeUpdate();
			if (ps==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Collection<MyPageBookVO> myRentalBookCon(int id) {
		Collection<MyPageBookVO> list=new ArrayList<>();
		try { 
			String sql = "select b.reservation_num, b.book_num, e.book_name, e.book_img, b.stu_num, b.book_condition, s.total_score" + 
					" from book_enroll AS e, book AS b" + 
					" JOIN student AS s" + 
					" ON b.stu_num = s.stu_num" +
					" where e.book_num = b.book_num and b.stu_num = ?" +
					" order by b.reservation_num desc";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new MyPageBookVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), 0, rs.getInt(5), 
						null, null, rs.getInt(6), rs.getFloat(7)));

			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<MyPageBookVO> myRentalBookingCon(int num, int id) {
		Collection<MyPageBookVO> list=new ArrayList<>();
		try { 
			String sql = "select b.reservation_num, b.book_num, e.book_name, e.book_img, e.category, b.stu_num, b.rental_date, b.return_date, b.book_condition, s.total_score" + 
					" from book_enroll AS e, book AS b" + 
					" JOIN student AS s" + 
					" ON b.stu_num = s.stu_num" +
					" where e.book_num = b.book_num and b.book_num = ? and b.stu_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new MyPageBookVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), 
						rs.getDate(7), rs.getDate(8), rs.getInt(9), rs.getFloat(10)));

			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public boolean bookCancleCon(int num) {
		try { 
			String sql = "delete from book where reservation_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean updateBookEnrollCon(int num2) {
		try {
			String sql = "UPDATE book_enroll SET book_enroll_condition=1 WHERE book_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num2);

			int ps = pstmt.executeUpdate();
			if (ps==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean bookReturnCon(int num) {
		try {
			String sql = "UPDATE book SET book_condition=0 WHERE reservation_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int ps = pstmt.executeUpdate();
			if (ps==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean returnUpdateCon(int num2) {
		try {
			String sql = "UPDATE book_enroll SET book_enroll_condition=0 WHERE book_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num2);

			int ps = pstmt.executeUpdate();
			if (ps==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
