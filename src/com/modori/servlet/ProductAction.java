package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.ProductDAO;

public class ProductAction implements Action {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page = "main.jsp";
		
		request.setAttribute("productData", new ProductDAO().productCon());
		page = "product.jsp";

		return page;
	}

}
