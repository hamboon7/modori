package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

public class DeclareDAO {
	private Connection conn;

	public DeclareDAO() {
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

	public boolean declareProduct(int id, int student_num_product, String product_name, String comment) {
		try {
			String sql = "insert into declareStudent(declare_stu_num, reporter_stu_num, declare_pro_name, declare_category, declare_date) values (?, ?, ?, ?, now())";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, student_num_product);
			pstmt.setString(3, product_name);
			pstmt.setString(4, comment);

			int num = pstmt.executeUpdate();
			if (num==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean declareBazaar(int id, int student_num_bazaar, String bazaar_name, String comment) {
		try {
			String sql = "insert into declareStudent(declare_stu_num, reporter_stu_num, declare_pro_name, declare_category, declare_date) values (?, ?, ?, ?, now())";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, student_num_bazaar);
			pstmt.setString(3, bazaar_name);
			pstmt.setString(4, comment);

			int num = pstmt.executeUpdate();
			if (num==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean declareAuction(int id, int student_num_auction, String auction_name, String comment) {
		try {
			String sql = "insert into declareStudent(declare_stu_num, reporter_stu_num, declare_pro_name, declare_category, declare_date) values (?, ?, ?, ?, now())";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, student_num_auction);
			pstmt.setString(3, auction_name);
			pstmt.setString(4, comment);

			int num = pstmt.executeUpdate();
			if (num==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean declareGroupBuying(int id, int student_num_groupBuying, String groupBuying_name, String comment) {
		try {
			String sql = "insert into declareStudent(declare_stu_num, reporter_stu_num, declare_pro_name, declare_category, declare_date) values (?, ?, ?, ?, now())";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setInt(2, student_num_groupBuying);
			pstmt.setString(3, groupBuying_name);
			pstmt.setString(4, comment);

			int num = pstmt.executeUpdate();
			if (num==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Collection<DeclareVO> declareListCon(int id) {
		Collection<DeclareVO> list=new ArrayList<>();
		try { 
			String sql = "select declare_num, declare_stu_num, reporter_stu_num, declare_pro_name, declare_category" + 
					" from declareStudent" +
					" where declare_stu_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new DeclareVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getString(4), rs.getString(5)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
}
