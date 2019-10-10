package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.BookDAO;

public class BookAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "main.jsp";
		
		request.setAttribute("bookData", new BookDAO().bookCon());
		page = "book.jsp";

		return page;
	}

}
