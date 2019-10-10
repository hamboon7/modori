package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RandomDAO {
   private Connection conn;
   public RandomDAO() {
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

   public void random(String pw, int id) {
      try {
         String sql = "UPDATE student set pw =? where stu_num =?";
         PreparedStatement pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, pw);
         pstmt.setInt(2, id);
         int rs = pstmt.executeUpdate();
         
      }catch (SQLException e) {e.printStackTrace();}
   }

}