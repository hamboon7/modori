package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.StudentCouncilDAO;

public class StudentCouncilBazzarInfoAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "studentAdmin.jsp";
		
		request.setAttribute("bazaarInfoData", new StudentCouncilDAO().bazaarInfoCon());
		
		page = "studentBazzarInfoAdmin.jsp";
			
		return page;
	}

}
