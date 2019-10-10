package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.BookDAO;
import com.modori.model.MyPageDAO;

public class MyPageReturnBookAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "mypage.jsp";
		
		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("loginOK");
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		request.setAttribute("myData", new MyPageDAO().myPageCon(id));
		request.setAttribute("myRentalBookingData", new BookDAO().myRentalBookingCon(num, id));

		page = "myPageReturnBook.jsp";
 
		return page;
	}

}
