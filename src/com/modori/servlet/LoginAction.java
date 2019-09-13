package com.modori.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.modori.model.LoginDAO;
import com.modori.model.MainDAO;

public class LoginAction implements Action {

	public String execute(HttpServletRequest request) throws UnsupportedEncodingException {
		String page = "error.jsp";
		
		String pw = new String(request.getParameter("pw").getBytes("8859_1"), "UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		if(new LoginDAO().login(id, pw)) {
			//세션을 등록
			//S1
			HttpSession session = request.getSession(true);
			session.setAttribute("loginOK", id);
			
			//Main에 필요한 데이터를 main.jsp에서 화면에 뿌려주기 위해서 
			// jstl item 이름 > mainData
			request.setAttribute("mainData", new MainDAO().mainCon());
			page = "main.jsp";
		}
		return page;
	}

}
