package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FindUpdateDAO {
	private Connection conn;
	public FindUpdateDAO() {
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

	public boolean update(String pw, int id) {
		try {
			String sql = "UPDATE student set pw =? where stu_num =?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setInt(2, id );
			int rs = pstmt.executeUpdate();
			return true;
		}catch (SQLException e) {e.printStackTrace();}
		return false;
	}

}
