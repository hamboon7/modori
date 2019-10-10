package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.GroupBuyingDAO;

public class GroupBuyingEnrollAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = "groupBuying.jsp";
		
		HttpSession session = request.getSession(true);
		int student_num = (int)session.getAttribute("loginOK");
		String product_name = new String(request.getParameter("product_name").getBytes("8859_1"), "UTF-8");
		int price = Integer.parseInt(request.getParameter("price"));
		String comment = new String(request.getParameter("comment").getBytes("8859_1"), "UTF-8");
		String groupBuying_img = new String(request.getParameter("groupBuying_img").getBytes("8859_1"), "UTF-8");
		
		if(new GroupBuyingDAO().groupBuying(student_num, product_name, price, comment, groupBuying_img)) {
			request.setAttribute("groupBuyingData", new GroupBuyingDAO().groupCon());
			page = "groupBuying.jsp";
		} 
		return page;
	}


}
