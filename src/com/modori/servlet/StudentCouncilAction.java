package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.StudentCouncilDAO;

public class StudentCouncilAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "studentAdmin.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		if(num >= 2015) {
			request.setAttribute("bookData", new StudentCouncilDAO().studentBookInfoCon(num));
			request.setAttribute("bookCalData", new StudentCouncilDAO().studentBookInfoCalCon(num));
		} else {
			request.setAttribute("bazaarData", new StudentCouncilDAO().studentBazaarInfoCon(num));
			request.setAttribute("bazaarCalData", new StudentCouncilDAO().studentBazaarInfoCalCon(num));
			
		}
		
		
		page = "studentBazaarAdmin.jsp";
			
		return page;
	}

}
