package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UdDAO {
	private Connection conn;
	public UdDAO() {
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

	public boolean delete(String pw, int id) {
		try {
			String sql = "DELETE from student where stu_num =? and pw =?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, pw);
			int rs = pstmt.executeUpdate();
			return true;
		}catch (SQLException e) {e.printStackTrace();}
		return false;
	}

}
