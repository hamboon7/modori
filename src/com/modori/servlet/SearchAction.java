package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import com.modori.model.SearchDAO;

public class SearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String word = new String(request.getParameter("word").getBytes("8859_1"), "UTF-8");
		
		String page = "search.jsp";
		
		request.setAttribute("mainData", new SearchDAO().search(word));
		
		return page;
	}
	
}
