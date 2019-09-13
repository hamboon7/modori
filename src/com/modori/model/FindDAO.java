package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FindDAO {
	private Connection conn;
	public FindDAO() {
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
	
	public boolean find(int id, String email) {
		try {
			String sql = "select name from student where stu_num =? and email=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, email);
			ResultSet rs = pstmt.executeQuery();

			if(rs.next())
				return true;
		}catch (SQLException e) {e.printStackTrace();}
		return false;
	}
}
