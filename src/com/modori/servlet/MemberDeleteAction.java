package com.modori.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.MemberDAO;

public class MemberDeleteAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String page = "memberDelete.jsp";

		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("loginOK");
		String pw = request.getParameter("pw");

		if(new MemberDAO().delete(pw, id)) {          
			page = "login.jsp";
		}else {
			page = "memberDelete.jsp";
		}                      
		return page;                           
	}

}