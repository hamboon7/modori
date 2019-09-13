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
			String url = "jdbc:mysql://127.0.0.1:3306/jh";
			String id = "root";
			String pw = "1111";
			conn = DriverManager.getConnection(url, id, pw);

		}catch (Exception e) {
			e.printStackTrace();
		}
	} 
	
	public Collection<MainVO> search(String w) {
		Collection<MainVO> list=new ArrayList<>();
		String word = w;
		try {
			Statement stmt = conn.createStatement(); 
			String sql = "select p.name, p.img1, p.price, p.category, p.pro_condition, p.sell_condition, s.total_score, p.pro_num" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" + 
					" where p.name like '%" + word + "%'" + 
					" union" + 
					" select b.name, b.img1, b.price, b.category, b.pro_condition, b.sell_condition, s.total_score, b.bazzar_num" + 
					" from bazaar AS b" + 
					" JOIN student AS s" + 
					" ON b.stu_seller_num = s.stu_num" + 
					" where b.name like '%" + word + "%'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) { 
				list.add(new MainVO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getFloat(7), rs.getInt(8)));
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
