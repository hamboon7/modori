package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.MyPagePurchaseDAO;

public class MyPageSellerMoneyAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page = "myPageEnrollPurchase.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		if(num >= 11900001 && num < 21900001) {
			request.setAttribute("myPageProductMoneyData", new MyPagePurchaseDAO().myPageProductMoneyCon(num));
			request.setAttribute("myPageProductData", new MyPagePurchaseDAO().myPageEnrollProductCon(num));
			request.setAttribute("myPageBazaarData", new MyPagePurchaseDAO().myPageEnrollBazaarCon(num));
			request.setAttribute("myPageGroupData", new MyPagePurchaseDAO().myPageEnrollGroupCon(num));
			
		} else if (num >= 21900001 && num < 31900001) {
			request.setAttribute("myPageBazaarMoneyData", new MyPagePurchaseDAO().myPageBazaarMoneyCon(num));
			request.setAttribute("myPageProductData", new MyPagePurchaseDAO().myPageEnrollProductCon(num));
			request.setAttribute("myPageBazaarData", new MyPagePurchaseDAO().myPageEnrollBazaarCon(num));
			request.setAttribute("myPageGroupData", new MyPagePurchaseDAO().myPageEnrollGroupCon(num));
			
		}
		
		
		page = "myPageEnrollPurchase.jsp";
		
		return page;
	}

}
