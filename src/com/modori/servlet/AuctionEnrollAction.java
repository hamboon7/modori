package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.AuctionDAO;

public class AuctionEnrollAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page = "auction.jsp";
		
		HttpSession session = request.getSession(true);
		int student_num = (int)session.getAttribute("loginOK");
		String product_name = new String(request.getParameter("product_name").getBytes("8859_1"), "UTF-8");
		int start_price = Integer.parseInt(request.getParameter("start_price"));
		int unit_price = Integer.parseInt(request.getParameter("unit_price"));
		String auction_img = new String(request.getParameter("auction_img").getBytes("8859_1"), "UTF-8");
		
		if(new AuctionDAO().auction(student_num, product_name, start_price, unit_price, auction_img)) {
			request.setAttribute("auctionData", new AuctionDAO().auctionCon());
			page = "auction.jsp";
		} 
		return page;
	}

}
