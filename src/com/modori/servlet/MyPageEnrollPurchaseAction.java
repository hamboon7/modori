package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.MyPagePurchaseDAO;

public class MyPageEnrollPurchaseAction implements Action {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page = "myPage.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		System.out.println(num);
		
		request.setAttribute("myPageEnrollProductData", new MyPagePurchaseDAO().myPageEnrollProductCon(num));
		request.setAttribute("myPageEnrollBazaarData", new MyPagePurchaseDAO().myPageEnrollBazaarCon(num));
		request.setAttribute("myPageEnrollGroupData", new MyPagePurchaseDAO().myPageEnrollGroupCon(num));

		page = "myPageEnrollPurchase.jsp";

		return page;
	}

}
