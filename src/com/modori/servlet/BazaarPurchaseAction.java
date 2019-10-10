package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.BazaarDAO;

public class BazaarPurchaseAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "bazaar.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		System.out.println(num);
		
		request.setAttribute("bazaarDetailData", new BazaarDAO().bazaarPurchaseCon(num));
		page = "bazaarPurchase.jsp";

		return page;
	}

}
