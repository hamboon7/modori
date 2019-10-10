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

         String url = "jdbc:mysql://localhost:3306/modori?useSSL=false&useUnicode=true&characterEncoding=utf-8";
         String id = "root";
         String pw = "qwer1234";
         conn = DriverManager.getConnection(url, id, pw);
         
      }catch (Exception e) {
         e.printStackTrace();
      }
   } 

   public boolean login(int id, String pw) {
		try {
			String sql = "select name from student where stu_num = ? AND pw = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, pw);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
				return true;
		} catch(Exception e) {
			e.printStackTrace();
		}
		return false;
   }
   
   public boolean deleteLogin(int id) {
	      try {
	         String sql = "select stu_status from student where stu_num = ? and stu_status = '가입'";
	         PreparedStatement pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, id);
	         ResultSet rs = pstmt.executeQuery();
	         if(rs.next())
	            return true;
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return false;
	  }

}