package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.MyPagePurchaseDAO;

public class MyPageBuyPurchaseAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "myPage.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		System.out.println(num);
		
		request.setAttribute("myPageBuyProductData", new MyPagePurchaseDAO().myPageBuyProductCon(num));
		request.setAttribute("myPageBuyBazaarData", new MyPagePurchaseDAO().myPageBuyBazaarCon(num));
		
		page = "myPageBuyPurchase.jsp";

		return page;
	}

}
