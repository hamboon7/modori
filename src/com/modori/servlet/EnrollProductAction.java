package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.MyPageDAO;
import com.modori.model.MypageProductDAO;

public class EnrollProductAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String page = "mypage.jsp";
		
		HttpSession session = request.getSession(true);
		int id = (int)session.getAttribute("loginOK");
		
		request.setAttribute("myData", new MyPageDAO().myPageCon(id));
		request.setAttribute("enrollProductData", new MypageProductDAO().enrollProductCon(id));
		request.setAttribute("enrollBazaarData", new MypageProductDAO().enrollBazaarCon(id));
		request.setAttribute("enrollGroupData", new MypageProductDAO().enrollGroupCon(id));

		page = "enrollProduct.jsp";
 
		return page;
	}
}
