package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.BazaarDAO;
import com.modori.model.GroupBuyingDAO;
import com.modori.model.AuctionDAO;
import com.modori.model.ProductDAO;

public class DeclareAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "declare.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		System.out.println(num);
		
		request.setAttribute("detailData", new ProductDAO().productPurchaseCon(num));
		request.setAttribute("bazaarDetailData", new BazaarDAO().bazaarPurchaseCon(num));
		request.setAttribute("auctionDetailData", new AuctionDAO().auctionPurchaseCon(num));
		request.setAttribute("groupDetailData", new GroupBuyingDAO().groupPurchaseCon(num));
		
		
		page = "declare.jsp";

		return page;
	}

}
