package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

public class MyPagePurchaseDAO {
	private Connection conn;

	   public MyPagePurchaseDAO() {
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
	
	public Collection<ProductVO> myPageEnrollProductCon(int num) {
	   Collection<ProductVO> list=new ArrayList<>();
	   try {
		   String sql = "select p.pro_num, p.name, p.img1, p.img2, p.img3, p.stu_seller_num, p.price, p.sale, p.category," + 
				   " (CASE p.pro_condition WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
				   " (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
				   " p.deal, p.comment, p.buyer_condition, p.seller_condition, p.score, s.total_score" + 
				   " from product AS p" + 
				   " JOIN student AS s" + 
				   " ON p.stu_seller_num = s.stu_num" +
				   " where p.pro_num = ?";
		   PreparedStatement pstmt = conn.prepareStatement(sql);
		   pstmt.setInt(1, num);
		   ResultSet rs = pstmt.executeQuery();
		   while(rs.next()) { 
			   list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), 
					   rs.getString(5), rs.getInt(6), 0, rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getString(10), 
					   rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getInt(16), rs.getFloat(17)));
		   }
		   rs.close();
		   pstmt.close();
	   } catch(Exception e) {
		   e.printStackTrace();
	   }
	   return list;

   }
	
	public Collection<BazaarVO> myPageEnrollBazaarCon(int num) {
		Collection<BazaarVO> list=new ArrayList<>();
		try { 
			String sql = "select b.bazaar_num, b.name, b.img1, b.img2, b.img3, b.stu_seller_num, b.stu_buyer_num, b.price, b.sale, b.category," + 
					" (CASE b.pro_condition WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE b.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" b.deal, b.comment, b.buyer_condition, b.seller_condition, b.score, s.total_score" + 
					" from bazaar AS b" +
					" JOIN student AS s" + 
					" ON b.stu_buyer_num = s.stu_num" +
					" where b.bazaar_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new BazaarVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						   rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getString(10), rs.getString(11), 
						   rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getInt(17), rs.getFloat(18)));

			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<GroupBuyingVO> myPageEnrollGroupCon(int num) {
		Collection<GroupBuyingVO> list=new ArrayList<>();
		try { 
			String sql = "select g.groupBuying_num, g.student_num, g.product_name, g.groupBuying_img, g.price, g.comment, s.total_score" + 
					" from groupBuying AS g" + 
					" JOIN student AS s" + 
					" ON g.student_num = s.stu_num" +
					" where g.groupBuying_num = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new GroupBuyingVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5), 
						rs.getString(6), rs.getFloat(7)));

			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> myPageBuyProductCon(int num) {
		   Collection<ProductVO> list=new ArrayList<>();
		   try {
			   String sql = "select p.pro_num, p.name, p.img1, p.img2, p.img3, p.stu_seller_num, p.stu_buyer_num, p.price, p.sale, p.category," + 
					   " (CASE p.pro_condition WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					   " (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					   " p.deal, p.comment, p.buyer_condition, p.seller_condition, p.score, s.total_score" + 
					   " from product AS p" + 
					   " JOIN student AS s" + 
					   " ON p.stu_seller_num = s.stu_num" +
					   " where p.pro_num = ?";
			   PreparedStatement pstmt = conn.prepareStatement(sql);
			   pstmt.setInt(1, num);
			   ResultSet rs = pstmt.executeQuery();
			   while(rs.next()) { 
				   list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						   rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getString(10), rs.getString(11), 
						   rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getInt(17), rs.getFloat(18)));
			   }
			   rs.close();
			   pstmt.close();
		   } catch(Exception e) {
			   e.printStackTrace();
		   }
		   return list;

	   }
		
		public Collection<BazaarVO> myPageBuyBazaarCon(int num) {
			Collection<BazaarVO> list=new ArrayList<>();
			try { 
				String sql = "select b.bazaar_num, b.name, b.img1, b.img2, b.img3, b.stu_seller_num, b.stu_buyer_num, b.price, b.sale, b.category," + 
						" (CASE b.pro_condition WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
						" (CASE b.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
						" b.deal, b.comment, b.buyer_condition, b.seller_condition, b.score, s.total_score" + 
						" from bazaar AS b" +
						" JOIN student AS s" + 
						" ON b.stu_seller_num = s.stu_num" +
						" where b.bazaar_num = ?";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) { 
					list.add(new BazaarVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), 
							   rs.getString(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getString(10), rs.getString(11), 
							   rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getInt(17), rs.getFloat(18)));

				}
				rs.close();
				pstmt.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
			return list;

		}

	public boolean myPageProductSale(int sale, int num) {
		try {
			String sql = "update product set sale=? where pro_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sale);
			pstmt.setInt(2, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean myPageBazaarSale(int sale, int num) {
		try {
			String sql = "update bazaar set sale=? where bazaar_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sale);
			pstmt.setInt(2, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean myPageProductDelete(int num) {
		try { 
			String sql = "delete from product where pro_num=?";
//					"SET @COUNT = 0 UPDATE product SET pro_num = @COUNT:=@COUNT+1";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean myPageBazaarDelete(int num) {
		try { 
			String sql = "delete from bazaar where bazaar_num=?";
//					"SET @COUNT = 0 UPDATE product SET pro_num = @COUNT:=@COUNT+1";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean myPageGroupDelete(int num) {
		try { 
			String sql = "delete from groupBuying where groupBuying_num=?";
//					"SET @COUNT = 0 UPDATE product SET pro_num = @COUNT:=@COUNT+1";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean myPageProductScoreCon(int score, int num) {
		try {
			String sql = "update product set score=? where pro_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, score);
			pstmt.setInt(2, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean myPageBazaarScoreCon(int score, int num) {
		try {
			String sql = "update bazaar set score=? where bazaar_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, score);
			pstmt.setInt(2, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean myPageProductAvgScoreCon(int sellerId) {
		try {
			String sql = "update student set total_score=(select avg(score) from product where stu_seller_num=?) where stu_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sellerId);
			pstmt.setInt(2, sellerId);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean myPageBazaarAvgScoreCon(int sellerId) {
		try {
			String sql = "update student set total_score=(select avg(score) from bazaar where stu_seller_num=?) where stu_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sellerId);
			pstmt.setInt(2, sellerId);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean myPageProductMoneyCon(int num) {
		try {
			String sql = "update product set seller_condition=\"입금완료\", sell_condition=2 where pro_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean myPageBazaarMoneyCon(int num) {
		try {
			String sql = "update bazaar set seller_condition=\"입금완료\", sell_condition=2 where bazaar_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean myPageProductCancelCon(int num) {
		try {
			String sql = "update product set stu_seller_num=NULL, sale=NULL, sell_condition=0, buyer_condition=NULL," + 
					" seller_condition=NULL, score=NULL, buy_date=NULL where pro_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean myPageBazaarCancelCon(int num) {
		try {
			String sql = "update bazaar set stu_seller_num=NULL, sale=NULL, sell_condition=0, buyer_condition=NULL," + 
					" seller_condition=NULL, score=NULL, buy_date=NULL where bazaar_num=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);

			int rs = pstmt.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
