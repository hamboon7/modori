package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.MyPageDAO;
import com.modori.model.MyPagePurchaseDAO;

public class MyPageCancleAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "myPageBuyPurchase.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("loginOK");
		
		if(num >= 11900001 && num < 21900001) {
			request.setAttribute("myPageProductCancleData", new MyPagePurchaseDAO().myPageProductCancelCon(num));
			request.setAttribute("myData", new MyPageDAO().myPageCon(id));
			request.setAttribute("myPageProductData", new MyPagePurchaseDAO().myPageBuyProductCon(num));
			request.setAttribute("myPageBazaarData", new MyPagePurchaseDAO().myPageBuyBazaarCon(num));
			
		} else if (num >= 21900001 && num < 31900001) {
			request.setAttribute("myPageBazaarCancleData", new MyPagePurchaseDAO().myPageBazaarCancelCon(num));
			request.setAttribute("myData", new MyPageDAO().myPageCon(id));
			request.setAttribute("myPageProductData", new MyPagePurchaseDAO().myPageBuyProductCon(num));
			request.setAttribute("myPageBazaarData", new MyPagePurchaseDAO().myPageBuyBazaarCon(num));
			
		}
		
		
		
		page = "buyProduct.jsp";
		
		return page;
	}

}
