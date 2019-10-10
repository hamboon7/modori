package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;

public class TotalScoreDAO {
	private Connection conn;

	public TotalScoreDAO() {
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

	public Collection<ProductVO> totalScoreCon(int id) {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.stu_seller_num, p.name, p.img1, p.score, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where p.stu_seller_num=?" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(3), rs.getString(4), null, null, rs.getInt(2), 0, 0, 
						0, null, null, null, null, null, null, null, rs.getInt(5), rs.getFloat(6)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
}
