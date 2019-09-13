package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.modori.model.FindUpdateDAO;
import com.modori.model.LoginDAO;

public class FindUpdate2Action implements Action {

	@Override
	public String execute(HttpServletRequest request) throws ServletException, IOException {
		String page = "find3.jsp";
		
		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("findOK");

		String pw = request.getParameter("pw");

		if(new FindUpdateDAO().update(pw,id)) {
			page = "login.jsp";
		}
		return page;
	}

}
