package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.DeclareDAO;
import com.modori.model.MyPageDAO;

public class DeclareGroupBuyingEnrollAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "declare.jsp";
		
		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("loginOK");
		
		int student_num_groupBuying = Integer.parseInt(request.getParameter("student_num_groupBuying"));
		String groupBuying_name = new String(request.getParameter("groupBuying_name").getBytes("8859_1"), "UTF-8");
		String comment = new String(request.getParameter("comment").getBytes("8859_1"), "UTF-8");
		
		if(new DeclareDAO().declareGroupBuying(id, student_num_groupBuying, groupBuying_name, comment)) {
			request.setAttribute("myData", new MyPageDAO().myPageCon(id));
			request.setAttribute("declareListData", new DeclareDAO().declareListCon(id));
			page = "myPageDeclareList.jsp";
			
		}
		return page;
	}

}
