package com.modori.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.BookDAO;

public class BookingAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "rentalBook.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		HttpSession session = request.getSession(true);
		int stu_num = (int)session.getAttribute("loginOK");
		
		String date = request.getParameter("rental_date");
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date rental_date = null;
		try {
			rental_date = transFormat.parse(date);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			page = "rentalBook.jsp";
			e.printStackTrace();
		}
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(rental_date);
		cal.add(Calendar.DATE, 14);
		Date return_date = cal.getTime();
		
		if(new BookDAO().bookingEnroll(num, stu_num, rental_date, return_date)) {
			request.setAttribute("bookUpdateData", new BookDAO().bookUpdateCon(num));
			page = "rentalBook.jsp";
		} 
		
		request.setAttribute("bookData", new BookDAO().rentalBookCon(num));
		request.setAttribute("rentalBookData", new BookDAO().rentalBookingCon(num));
		
		return page;
	}

}
