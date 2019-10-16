package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.StudentCouncilDAO;

public class StudentCouncilBazzarInfoUpdateAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "studentBazzarInfoAdmin.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		request.setAttribute("bazaarInfoUpdateData", new StudentCouncilDAO().bazaarInfoUpdateCon(num));
		
		page = "studentBazzarInfoUpdateAdmin.jsp";
			
		return page;
	}

}
