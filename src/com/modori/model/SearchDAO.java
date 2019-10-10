package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

public class SearchDAO {
	private Connection conn;

	public SearchDAO() {
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
	
	public Collection<ProductVO> searchCategory(String w) {
		Collection<ProductVO> list=new ArrayList<>();
		String word = w;
		try {
			Statement stmt = conn.createStatement(); 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" + 
					" where p.name like '%" + word + "%'" ;
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0,
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, null, null, null, 0, rs.getFloat(8)));
			}
			System.out.println(word);
			rs.close();
			stmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public Collection<ProductVO> searchProduct(String w, int category2) {
		Collection<ProductVO> list=new ArrayList<>();
		String word = w;
		try {
			Statement stmt = conn.createStatement(); 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" + 
					" where p.name like '%" + word + "%' and p.category like '%" + category2 + "%'" ;
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0,
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, null, null, null, 0, rs.getFloat(8)));
			}
			System.out.println(word);
			rs.close();
			stmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<BazaarVO> searchBazaar(String w) {
		Collection<BazaarVO> list=new ArrayList<>();
		String word = w;
		try {
			Statement stmt = conn.createStatement(); 
			String sql = " select b.bazaar_num, b.name, b.img1, b.price, b.category, (CASE b.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," +
					" (CASE b.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" s.total_score" +  
					" from bazaar AS b" + 
					" JOIN student AS s" + 
					" ON b.stu_seller_num = s.stu_num" + 
					" where b.name like '%" + word + "%'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) { 
				list.add(new BazaarVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0,
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, null, null, null, 0, rs.getFloat(8)));
			}
			System.out.println(word);
			rs.close();
			stmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<AuctionVO> searchAuction(String w) {
		Collection<AuctionVO> list=new ArrayList<>();
		String word = w;
		try {
			Statement stmt = conn.createStatement(); 
			String sql = "select a.auction_num, a.student_num, a.product_name, a.auction_img, a.start_price, a.unit_price, s.total_score" + 
					" from auction AS a" + 
					" JOIN student AS s" + 
					" ON a.student_num = s.stu_num" + 
					" where a.product_name like '%" + word + "%'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) { 
				list.add(new AuctionVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), 
						rs.getInt(6), rs.getFloat(7)));
			}
			System.out.println(word);
			rs.close();
			stmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<GroupBuyingVO> searchGroup(String w) {
		Collection<GroupBuyingVO> list=new ArrayList<>();
		String word = w;
		try {
			Statement stmt = conn.createStatement(); 
			String sql = "select g.groupBuying_num, g.student_num, g.product_name, g.groupBuying_img, g.price, g.comment, s.total_score" + 
					" from groupBuying AS g" + 
					" JOIN student AS s" + 
					" ON g.student_num = s.stu_num" + 
					" where g.product_name like '%" + word + "%'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) { 
				list.add(new GroupBuyingVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), 
						rs.getString(6), rs.getFloat(7)));
			}
			System.out.println(word);
			rs.close();
			stmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
}