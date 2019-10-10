package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

public class ProductDAO {
	private Connection conn;

	public ProductDAO() {
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

	public Collection<ProductVO> productCon() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public boolean productEnroll(int stu_seller_num, String name, int category, int price, String comment, String img1, String img2,
			String img3, int pro_condition, String deal) {
		try {
			String sql = "insert into product(stu_seller_num, name, img1, img2, img3, price, category, pro_condition, deal, comment, sell_condition, enroll_date) values (?,?,?,?,?,?,?,?,?,?,0,now())";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, stu_seller_num);
			pstmt.setString(2, name);
			pstmt.setString(3, img1);
			pstmt.setString(4, img2);
			pstmt.setString(5, img3);
			pstmt.setInt(6, price);
			pstmt.setInt(7, category);
			pstmt.setInt(8, pro_condition);
			pstmt.setString(9, deal);
			pstmt.setString(10, comment);

			int num = pstmt.executeUpdate();
			if (num==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public Collection<ProductVO> productPurchaseCon(int num) {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.img2, p.img3, p.stu_seller_num, p.stu_buyer_num, p.price, p.sale, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.deal, p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where p.pro_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						   rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getString(10), 
						   rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), null, null, 0, rs.getFloat(15)));

			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	
}
