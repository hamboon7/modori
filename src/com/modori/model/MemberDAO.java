package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemberDAO {
	private Connection conn;

	public MemberDAO() {
		try {
		// 1. driver loading
		String cs = "com.mysql.jdbc.Driver";
		Class.forName(cs); // 중간단계에서 throws해야한다.
		System.out.println("1. ok");
		// 2. DBMS 연결
		String url = "jdbc:mysql://localhost:3306/modori?useSSL=false&useUnicode=true&characterEncoding=utf-8";
		String id = "root";
		String pw = "qwer1234";
		conn = DriverManager.getConnection(url, id, pw); // 중간단계에서 throws해야한다.
		System.out.println("2. conn");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	public boolean member(String number, String pw, String name, String phone, String email, String department,
			String bank, String bankNumber) {
		try {
			String sql = "insert into student(stu_num, pw, name, phon, email, department, total_score, bank, account, stu_status) values (?,?,?,?,?,?,0,?,?,\"가입\")";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, number);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, phone);
			pstmt.setString(5, email);
			pstmt.setString(6, department);
			pstmt.setString(7, bank);
			pstmt.setString(8, bankNumber);

			int num = pstmt.executeUpdate();
			if (num==1) return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean delete(String pw, int id) {
		try {
			String sql = "UPDATE student set stu_status = '탈퇴' where stu_num = ? and pw = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, pw);
			int rs = pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {e.printStackTrace();}
		return false;
	}

}
