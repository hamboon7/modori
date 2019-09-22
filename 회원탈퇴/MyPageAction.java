package com.modori.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.LoginDAO;
import com.modori.model.UdDAO;

public class MyPageAction implements Action {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String page = "myPage.jsp";
		
		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("loginOK");
		String pw = request.getParameter("pw");

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		if(new UdDAO().delete(pw, id)) {			 
			out.println("<script>alert('회원탈퇴 되었습니다.');</script>");
			out.flush();
		}else {
			out.println("<script>alert('비밀번호가 옳바르지 않습니다.');</script>");
			out.flush();
		}
		request.setAttribute("myData", new MyPageDAO().myPageCon(id));
 
		return page;
	}

	@Override
	public String execute(HttpServletRequest request) throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

}
