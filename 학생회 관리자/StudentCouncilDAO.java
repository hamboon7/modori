package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

public class StudentCouncilDAO {
	private Connection conn;

	public StudentCouncilDAO() {
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
	
	public Collection<StudentCouncilBazaarVO> studentBazaarCon() {
		Collection<StudentCouncilBazaarVO> list=new ArrayList<>();
		try { 
			String sql =  "select count(*), price, sale, bazaar_num, bazInfo_num, stu_seller_num, stu_buyer_num, name, img1, sell_condition" + 
					" from bazaar where bazInfo_num=6" +
					" group by bazaar_num, bazInfo_num, stu_seller_num, stu_buyer_num, name, img1, sell_condition" +
					" order by bazaar_num desc";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBazaarVO(rs.getInt(1), 0, rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), 
						rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<StudentCouncilBazaarVO> studentBazaarCalCon() {
		Collection<StudentCouncilBazaarVO> list=new ArrayList<>();
		try { 
			String sql =  "select count(*), sum(price-sale) from bazaar where bazInfo_num=6";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBazaarVO(rs.getInt(1), rs.getInt(2), 0, 0, 0, 0, 0, 0, null, null, 0));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<StudentCouncilBazaarVO> studentBazaarInfoCon(int num) {
		Collection<StudentCouncilBazaarVO> list=new ArrayList<>();
		try { 
			String sql =  "select count(*), price, sale, bazaar_num, bazInfo_num, stu_seller_num, stu_buyer_num, name, img1, sell_condition" + 
					" from bazaar  where bazInfo_num=?" +
					" group by bazaar_num, bazInfo_num, stu_seller_num, stu_buyer_num, name, img1, sell_condition" +
					" order by bazaar_num desc";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBazaarVO(rs.getInt(1), 0, rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), 
						rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<StudentCouncilBazaarVO> studentBazaarInfoCalCon(int num) {
		Collection<StudentCouncilBazaarVO> list=new ArrayList<>();
		try { 
			String sql =  "select count(*), sum(price-sale), bazInfo_num from bazaar where bazInfo_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBazaarVO(rs.getInt(1), rs.getInt(2), 0, 0, 0, rs.getInt(3), 0, 0, null, null, 0));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<StudentCouncilBookVO> studentBookInfoCon() {
		Collection<StudentCouncilBookVO> list=new ArrayList<>();
		try { 
			String sql =  "select reservation_num, book.book_num, book.stu_num, rental_date, return_date, book_condition, book_name, book_img, book_enroll_condition" + 
					" from book, book_enroll" +
					" where book.book_num=book_enroll.book_num" +
					" order by reservation_num desc";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBookVO(0, 0, 0, rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4), rs.getDate(5),
						rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<StudentCouncilBookVO> studentBookInfoCalCon() {
		Collection<StudentCouncilBookVO> list=new ArrayList<>();
		try { 
			String sql =  "select count(case when book_condition=0 then 1 end), count(case when book_condition=1 then 1 end)," +
					" count(case when book_condition=2 then 1 end) from book";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBookVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), 0, 0, 0, null, null, 0, null, null, 0));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public boolean studentBookUpdateCon(int num) {
		try {
			String sql = "UPDATE book_enroll SET book_enroll_condition=3 WHERE book_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int ps = pstmt.executeUpdate();
			if (ps==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Collection<StudentCouncilBookVO> studentBookDamageCon() {
		Collection<StudentCouncilBookVO> list=new ArrayList<>();
		try { 
			String sql =  "select book_num, stu_num, book_name, book_img, book_enroll_condition" + 
					" from book_enroll" +
					" where book_enroll_condition=3" +
					" order by book_num desc";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBookVO(0, 0, 0, 0, rs.getInt(1), rs.getInt(2), null, null, rs.getInt(5), 
						rs.getString(3), rs.getString(4), 0));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<StudentCouncilBookVO> studentBookDamageCalCon() {
		Collection<StudentCouncilBookVO> list=new ArrayList<>();
		try { 
			String sql =  "select count(*) from book_enroll where book_enroll_condition=3";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBookVO(rs.getInt(1), 0, 0, 0, 0, 0, null, null, 0, null, null, 0));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
}
