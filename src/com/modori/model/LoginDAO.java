package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
	private Connection conn;
	public LoginDAO() {
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

	public boolean login(int id, String pw) {
		try {
			String sql = "select name from student where stu_num =? and pw=? ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, pw);
			ResultSet rs = pstmt.executeQuery();

			if(rs.next())
				return true;
		}catch (SQLException e) {e.printStackTrace();}
		return false;
	}

}
