package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.modori.model.LoginDAO;
import com.modori.model.MainDAO;

public class FindUpdateAction implements Action {

	@Override
	public String execute(HttpServletRequest request) throws ServletException, IOException {

		String page = "find.jsp";

		int id = Integer.parseInt(request.getParameter("id"));
		String pw = request.getParameter("pw");
		
		if(new LoginDAO().login(id, pw)) {
			
			HttpSession session = request.getSession(true);
			session.setAttribute("findOK", id);
			
			page = "find3.jsp";
		}
		return page;
	}

}
