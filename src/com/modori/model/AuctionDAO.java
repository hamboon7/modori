package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

public class AuctionDAO {

	private Connection conn;

	public AuctionDAO() {
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

	public Collection<AuctionVO> auctionCon() {
		Collection<AuctionVO> list=new ArrayList<>();
		try { 
			String sql = "select a.auction_num, a.student_num, a.product_name, a.auction_img, a.start_price, a.unit_price, s.total_score" + 
					" from auction AS a" + 
					" JOIN student AS s" + 
					" ON a.student_num = s.stu_num" +
					" ORDER BY a.auction_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new AuctionVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), 
						rs.getInt(6), rs.getFloat(7)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public boolean auction(int student_num, String product_name, int start_price, int unit_price, String auction_img) {
		try {
			String sql = "insert into auction(student_num, product_name, auction_img, start_price, unit_price) values (?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, student_num);
			pstmt.setString(2, product_name);
			pstmt.setString(3, auction_img);
			pstmt.setInt(4, start_price);
			pstmt.setInt(5, unit_price);

			int num = pstmt.executeUpdate();
			if (num==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public Collection<AuctionVO> auctionPurchaseCon(int num) {
		Collection<AuctionVO> list=new ArrayList<>();
		try { 
			String sql = "select a.auction_num, a.student_num, a.product_name, a.auction_img, a.start_price, a.unit_price, s.total_score" + 
					" from auction AS a" + 
					" JOIN student AS s" +
					" ON a.student_num = s.stu_num" +
					" where a.auction_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new AuctionVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), 
						rs.getInt(6), rs.getFloat(7)));

			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public static void main(String[] args) {
		System.out.println(new AuctionDAO().auctionCon());
	}

}

