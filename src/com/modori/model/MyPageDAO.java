package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;

public class MyPageDAO {
	private Connection conn;

	public MyPageDAO() {
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

	public Collection<MyPageVO> myPageCon(int id) {
		Collection<MyPageVO> list=new ArrayList<>();
		try { 
			String sql = "select stu_num, pw, name, phon, email, department, total_score, bank, account" + 
					" from student" + 
					" where stu_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new MyPageVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						rs.getString(5), rs.getString(6), rs.getFloat(7), rs.getString(8), rs.getString(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}

}
