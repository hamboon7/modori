package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;

public class MypageProductDAO {
	private Connection conn;

	   public MypageProductDAO() {
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

	   public Collection<ProductVO> enrollProductCon(int id) {
	      Collection<ProductVO> list=new ArrayList<>();
	      try { 
	    	  String sql = "select pro_num, name, img1, stu_seller_num, stu_buyer_num, price, (CASE sell_condition" + 
	    			  " WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
	    			  " buyer_condition, seller_condition" + 
	    			  " from product" +
	    			  " where stu_seller_num = ?" +
	    			  " order by pro_num desc";
	         PreparedStatement pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, id);
	         ResultSet rs = pstmt.executeQuery();
	         while(rs.next()) { 
	            list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, rs.getInt(4), rs.getInt(5), rs.getInt(6), 
	            		            0, null, null, rs.getString(7), null, null, rs.getString(8), rs.getString(9), 0, 0));
	         }
	         rs.close();
	         pstmt.close();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return list;

	   }

	   public Collection<MypageProductVO> enrollBazaarCon(int id) {
	      Collection<MypageProductVO> list=new ArrayList<>();
	      try { 
	    	  String sql = " select bazaar_num, name, img1, stu_seller_num, stu_buyer_num, price, (CASE sell_condition" + 
	    			  " WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
	    			  " buyer_condition, seller_condition" +  
	    			  " from bazaar" +
					  " where stu_seller_num=?" +
	    			  " order by bazaar_num desc";
	         PreparedStatement pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, id);
	         ResultSet rs = pstmt.executeQuery();
	         while(rs.next()) { 
	            list.add(new MypageProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, rs.getInt(4), rs.getInt(5), rs.getInt(6), 
	            		            null, null, rs.getString(7), null, null, rs.getString(8), rs.getString(9), 0));
	         }
	         rs.close();
	         pstmt.close();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return list;

	   }
	   
	   public Collection<GroupBuyingVO> enrollGroupCon(int id) {
	      Collection<GroupBuyingVO> list=new ArrayList<>();
	      try { 
	    	  String sql = " select groupBuying_num, student_num, product_name, groupBuying_img, price" +  
	    			  " from groupBuying" +
					  " where student_num=?" +
	    			  " order by groupBuying_num desc";
	         PreparedStatement pstmt = conn.prepareStatement(sql);
	         pstmt.setInt(1, id);
	         ResultSet rs = pstmt.executeQuery();
	         while(rs.next()) { 
	            list.add(new GroupBuyingVO(rs.getInt(1), rs.getInt(2), rs.getString(3), 
	            		rs.getString(4), rs.getInt(5), null, 0));
	         }
	         rs.close();
	         pstmt.close();
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return list;

	   }
	   
	   public Collection<ProductVO> buyProductCon(int id) {
		      Collection<ProductVO> list=new ArrayList<>();
		      try { 
		    	  String sql = "select pro_num, name, img1, stu_seller_num, stu_buyer_num, price, (CASE sell_condition" + 
		    			  " WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
		    			  " buyer_condition, seller_condition" + 
		    			  " from product" +
		    			  " where stu_buyer_num = ?" +
		    			  " order by buy_date desc";
		         PreparedStatement pstmt = conn.prepareStatement(sql);
		         pstmt.setInt(1, id);
		         ResultSet rs = pstmt.executeQuery();
		         while(rs.next()) { 
		            list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, rs.getInt(4), rs.getInt(5), rs.getInt(6), 
		            		            0, null, null, rs.getString(7), null, null, rs.getString(8), rs.getString(9), 0, 0));
		         }
		         rs.close();
		         pstmt.close();
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      return list;

		   }

		   public Collection<MypageProductVO> buyBazaarCon(int id) {
		      Collection<MypageProductVO> list=new ArrayList<>();
		      try { 
		    	  String sql = " select bazaar_num, name, img1, stu_seller_num, stu_buyer_num, price, (CASE sell_condition" + 
		    			  " WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
		    			  " buyer_condition, seller_condition" +  
		    			  " from bazaar" +
						  " where stu_buyer_num=?" +
		    			  " order by buy_date desc";
		         PreparedStatement pstmt = conn.prepareStatement(sql);
		         pstmt.setInt(1, id);
		         ResultSet rs = pstmt.executeQuery();
		         while(rs.next()) { 
		            list.add(new MypageProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, rs.getInt(4), rs.getInt(5), rs.getInt(6), 
		            		            null, null, rs.getString(7), null, null, rs.getString(8), rs.getString(9), 0));
		         }
		         rs.close();
		         pstmt.close();
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      return list;

		   }
}
