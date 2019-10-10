package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.TotalScoreDAO;
import com.modori.model.MyPageDAO;

public class MyPageTotalScoreAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "myPage.jsp";
		
		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("loginOK");
		
		request.setAttribute("myData", new MyPageDAO().myPageCon(id));
		request.setAttribute("totalScoreData", new TotalScoreDAO().totalScoreCon(id));
		page = "myPageTotalScore.jsp";
		
		return page;
	}

}
