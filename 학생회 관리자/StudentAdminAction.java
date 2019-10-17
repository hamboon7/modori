package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.StudentCouncilDAO;

public class StudentAdminAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setAttribute("studentBazaarData", new StudentCouncilDAO().studentBazaarCon());
		request.setAttribute("bookInfoCalData", new StudentCouncilDAO().studentBookInfoCalCon());
		
		String page="studentAdmin.jsp";
		
		return page;
	}

}
