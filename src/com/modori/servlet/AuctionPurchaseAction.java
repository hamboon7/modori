package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.AuctionDAO;

public class AuctionPurchaseAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page = "auction.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		System.out.println(num);
		
		request.setAttribute("auctionDetailData", new AuctionDAO().auctionPurchaseCon(num));
		page = "auctionPurchase.jsp";

		return page;
	}

}
