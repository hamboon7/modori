package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.MyPagePurchaseDAO;

public class MyPageSaleAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page = "myPageEnrollPurchase.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		int sale = Integer.parseInt(request.getParameter("sale"));
		
		if(num >= 11900001 && num < 21900001) {
			request.setAttribute("myPageSaleData", new MyPagePurchaseDAO().myPageProductSale(sale, num));
			request.setAttribute("myPageProductData", new MyPagePurchaseDAO().myPageEnrollProductCon(num));
			request.setAttribute("myPageBazaarData", new MyPagePurchaseDAO().myPageEnrollBazaarCon(num));
			request.setAttribute("myPageGroupData", new MyPagePurchaseDAO().myPageEnrollGroupCon(num));
			
		} else if (num >= 21900001 && num < 31900001) {
			request.setAttribute("myPageSaleData", new MyPagePurchaseDAO().myPageBazaarSale(sale, num));
			request.setAttribute("myPageProductData", new MyPagePurchaseDAO().myPageEnrollProductCon(num));
			request.setAttribute("myPageBazaarData", new MyPagePurchaseDAO().myPageEnrollBazaarCon(num));
			request.setAttribute("myPageGroupData", new MyPagePurchaseDAO().myPageEnrollGroupCon(num));
			
		} 
		
		page = "myPageEnrollPurchase.jsp";
		
		return page;
	}

}
