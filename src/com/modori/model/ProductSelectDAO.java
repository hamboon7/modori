package com.modori.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;

public class ProductSelectDAO {
	private Connection conn;

	public ProductSelectDAO() {
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
	
	public Collection<ProductVO> productSelect1Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 1101 and category<=1101" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect2Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 1201 and category<=1206" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect3Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 1301 and category<=1306" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect4Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 1401 and category<=1406" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect5Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 1501 and category<=1503" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect6Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 1601 and category<=1606" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect7Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 1701 and category<=1703" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect8Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 1801 and category<=1807" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect9Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 2101 and category<=2110" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect10Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 2201 and category<=2205" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect11Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 2301 and category<=2305" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect12Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 2401 and category<=2403" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect13Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 2501 and category<=2505" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect14Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 2601 and category<=2607" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect15Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 3101 and category<=4303" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	
	public Collection<ProductVO> productSelect16Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 5101 and category<=5112" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public Collection<ProductVO> productSelect17Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 6101 and category<=6111" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public Collection<ProductVO> productSelect18Con() {
		Collection<ProductVO> list=new ArrayList<>();
		try { 
			String sql = "select p.pro_num, p.name, p.img1, p.price, p.category, (CASE p.pro_condition" + 
					" WHEN '0' THEN '상' WHEN '1' THEN '중' WHEN '2' THEN '하' END)," + 
					" (CASE p.sell_condition WHEN '0' THEN '등록' WHEN '1' THEN '거래 중' WHEN '2' THEN '거래 완료' END)," + 
					" p.comment, s.total_score" + 
					" from product AS p" + 
					" JOIN student AS s" + 
					" ON p.stu_seller_num = s.stu_num" +
					" where category >= 7101 and category<=7107" +
					" ORDER BY p.pro_num DESC";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3), null, null, 0, 0, rs.getInt(4), 0, 
    		            rs.getString(5), rs.getString(6), rs.getString(7), null, rs.getString(8), null, null, 0, rs.getFloat(9)));
			}
			rs.close();
			pstmt.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;

	}

}
