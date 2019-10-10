package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.BookDAO;

public class BookEnrollAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "book.jsp";
		
		HttpSession session = request.getSession(true);
		int stu_num = (int)session.getAttribute("loginOK");
		String name = new String(request.getParameter("name").getBytes("8859_1"), "UTF-8");
		int category = Integer.parseInt(request.getParameter("category"));
		String book_img = new String(request.getParameter("book_img").getBytes("8859_1"), "UTF-8");
		
		if(new BookDAO().bookEnroll(stu_num, name, category, book_img)) {
			request.setAttribute("bookData", new BookDAO().bookCon());
			page = "book.jsp";
		} 
		return page;
	}

}
