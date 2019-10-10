package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.BookDAO;

public class RentalBookAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "book.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		System.out.println(num);
		
		request.setAttribute("bookData", new BookDAO().rentalBookCon(num));
		request.setAttribute("rentalBookData", new BookDAO().rentalBookingCon(num));
		page = "rentalBook.jsp";

		return page;
	}

}
