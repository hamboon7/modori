package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.MyPageDAO;
import com.modori.model.MyPagePurchaseDAO;
import com.modori.model.MypageProductDAO;

public class MyPageDeleteAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page = "myPagePurchase.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("loginOK");

		
		if(num >= 11900001 && num < 21900001) {
			request.setAttribute("myPageProductDeleteData", new MyPagePurchaseDAO().myPageProductDelete(num));
			request.setAttribute("myData", new MyPageDAO().myPageCon(id));
			request.setAttribute("enrollProductData", new MypageProductDAO().enrollProductCon(id));
			request.setAttribute("enrollBazaarData", new MypageProductDAO().enrollBazaarCon(id));
			request.setAttribute("enrollGroupData", new MypageProductDAO().enrollGroupCon(id));
			
			page = "enrollProduct.jsp";
			
		} else if (num >= 21900001 && num < 31900001) {
			request.setAttribute("myPageBazaarDeleteData", new MyPagePurchaseDAO().myPageBazaarDelete(num));
			request.setAttribute("myData", new MyPageDAO().myPageCon(id));
			request.setAttribute("enrollProductData", new MypageProductDAO().enrollProductCon(id));
			request.setAttribute("enrollBazaarData", new MypageProductDAO().enrollBazaarCon(id));
			request.setAttribute("enrollGroupData", new MypageProductDAO().enrollGroupCon(id));
			
			page = "enrollProduct.jsp";
			
		} else if (num >= 51900001 && num < 61900001) {
			request.setAttribute("myPageGroupDeleteData", new MyPagePurchaseDAO().myPageGroupDelete(num));
			request.setAttribute("myData", new MyPageDAO().myPageCon(id));
			request.setAttribute("enrollProductData", new MypageProductDAO().enrollProductCon(id));
			request.setAttribute("enrollBazaarData", new MypageProductDAO().enrollBazaarCon(id));
			request.setAttribute("enrollGroupData", new MypageProductDAO().enrollGroupCon(id));
			
			page = "enrollProduct.jsp";
		}
		
		return page;
	}
}
