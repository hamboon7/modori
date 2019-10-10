package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.BazaarDAO;

public class BazaarAction implements Action {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = "main.jsp";
		
		request.setAttribute("bazaarData", new BazaarDAO().bazaarCon());
		page = "bazaar.jsp";

		return page;
	}

}
