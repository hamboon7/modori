package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.ProductDAO;

public class ProductEnrollAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String page = "productEnroll.jsp";
		
		HttpSession session = request.getSession(true);
		int stu_seller_num = (int)session.getAttribute("loginOK");
		String name = new String(request.getParameter("name").getBytes("8859_1"), "UTF-8");
		int category = Integer.parseInt(request.getParameter("category2"));
		int price = Integer.parseInt(request.getParameter("price"));
		String comment = new String(request.getParameter("comment").getBytes("8859_1"), "UTF-8");
		String img1 = new String(request.getParameter("img1").getBytes("8859_1"), "UTF-8");
		String img2 = new String(request.getParameter("img2").getBytes("8859_1"), "UTF-8");
		String img3 = new String(request.getParameter("img3").getBytes("8859_1"), "UTF-8");
		int pro_condition = Integer.parseInt(request.getParameter("pro_condition"));
		String deal = new String(request.getParameter("deal").getBytes("8859_1"), "UTF-8");
		
		if(new ProductDAO().productEnroll(stu_seller_num, name, category, price, comment, img1, img2, img3, pro_condition, deal)) {
			request.setAttribute("productData", new ProductDAO().productCon());
			page = "product.jsp";
		} 
		return page;
	}

}
