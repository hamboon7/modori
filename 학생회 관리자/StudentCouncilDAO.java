package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

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
	
	public Collection<StudentCouncilBazaarCountVO> studentBazaarCon() {
		Collection<StudentCouncilBazaarCountVO> list=new ArrayList<>();
		try { 
			String sql =  "select count(case when bazInfo_num=1 then 1 end), sum(case when bazInfo_num=1 then price-sale end)," + 
					" count(case when bazInfo_num=2 then 1 end), sum(case when bazInfo_num=2 then price-sale end)," +
					" count(case when bazInfo_num=3 then 1 end), sum(case when bazInfo_num=3 then price-sale end)," +
					" count(case when bazInfo_num=4 then 1 end), sum(case when bazInfo_num=4 then price-sale end)," +
					" count(case when bazInfo_num=5 then 1 end), sum(case when bazInfo_num=5 then price-sale end)," +
					" count(case when bazInfo_num=6 then 1 end), sum(case when bazInfo_num=6 then price-sale end)" +
					" from bazaar";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBazaarCountVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),
						rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getInt(11), rs.getInt(12)));
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
				list.add(new StudentCouncilBookVO(0, 0, 0, 0, 0, rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDate(4), rs.getDate(5),
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
			String sql =  "select count(*)-count(case when book_enroll_condition=3 then 1 end), count(case when book_enroll_condition=1 then 1 end)+count(case when book_enroll_condition=2 then 1 end)," + 
					" count(case when book_enroll_condition=2 then 1 end), count(case when book_enroll_condition=0 then 1 end), count(case when book_enroll_condition=3 then 1 end), count(*) from book_enroll";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new StudentCouncilBookVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), 0, 0, 0, null, null, 0, null, null, 0));
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
				list.add(new StudentCouncilBookVO(0, 0, 0, 0, 0, 0, rs.getInt(1), rs.getInt(2), null, null, rs.getInt(5), 
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
				list.add(new StudentCouncilBookVO(rs.getInt(1), 0, 0, 0, 0, 0, 0, 0, null, null, 0, null, null, 0));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<bazaarInfoVO> bazaarInfoCon() {
		Collection<bazaarInfoVO> list=new ArrayList<>();
		try { 
			String sql =  "select bazInfo_num, name, bank, account, start, end from bazaar_info order by bazInfo_num desc";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new bazaarInfoVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getDate(6)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public boolean studentBazzarEnroll(String name, String bank, String account, Date startDate, Date endDate) {
		try {
			String sql = "insert into bazaar_info(name, bank, account, start, end) values (?, ?, ?, ?, ?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, bank);
			pstmt.setString(3, account);
			pstmt.setDate(4, new java.sql.Date(startDate.getTime()));
			pstmt.setDate(5, new java.sql.Date(endDate.getTime()));

			int num = pstmt.executeUpdate();
			if (num==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Collection<bazaarInfoVO> bazaarInfoUpdateCon(int num) {
		Collection<bazaarInfoVO> list=new ArrayList<>();
		try { 
			String sql =  "select bazInfo_num, name, bank, account, start, end from bazaar_info where bazInfo_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new bazaarInfoVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getDate(6)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public boolean bazaarUpdateCon(int num, String name, String bank, String account, Date startDate, Date endDate) {
		try {
			String sql = "UPDATE bazaar_info SET name=?, bank=?, account=?, start=?, end=? WHERE bazInfo_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, bank);
			pstmt.setString(3, account);
			pstmt.setDate(4, new java.sql.Date(startDate.getTime()));
			pstmt.setDate(5, new java.sql.Date(endDate.getTime()));
			pstmt.setInt(6, num);

			int ps = pstmt.executeUpdate();
			if (ps==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
