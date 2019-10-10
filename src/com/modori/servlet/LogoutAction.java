package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 만일 세션이 있으면 서버에서 모두 해제
		HttpSession session = request.getSession();
		if(session != null)
			session.invalidate(); // 서버차원에서 해제
		return "index.jsp";
	}

}
