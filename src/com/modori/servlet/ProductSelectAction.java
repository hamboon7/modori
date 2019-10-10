package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.ProductSelectDAO;

public class ProductSelectAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page = "main.jsp";
		
		int category = Integer.parseInt(request.getParameter("category"));
		
		if(category == 1) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect1Con());
		} else if (category == 2) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect2Con());
		} else if (category == 3) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect3Con());
		} else if (category == 4) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect4Con());
		} else if (category == 5) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect5Con());
		} else if (category == 6) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect6Con());
		} else if (category == 7) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect7Con());
		} else if (category == 8) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect8Con());
		} else if (category == 9) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect9Con());
		} else if (category == 10) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect10Con());
		} else if (category == 11) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect11Con());
		} else if (category == 12) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect12Con());
		} else if (category == 13) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect13Con());
		} else if (category == 14) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect14Con());
		} else if (category == 15) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect15Con());
		} else if (category == 16) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect16Con());
		} else if (category == 17) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect17Con());
		} else if (category == 18) {
			request.setAttribute("productSelectData", new ProductSelectDAO().productSelect18Con());
		}
		
		page = "productSelect.jsp";
		
		return page;
	}

}
