package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.AccountDAO;

public class ReceiptAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "account.jsp";
		
		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("loginOK");
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		request.setAttribute("buyPData", new AccountDAO().accountP(id, num));
		request.setAttribute("buyBData", new AccountDAO().accountB(id, num));
		
		request.setAttribute("updatePData", new AccountDAO().updateP(id));
		
		page = "receipt.jsp";
 
		return page;
	}

}
