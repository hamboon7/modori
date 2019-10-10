package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.modori.model.AuctionDAO;
import com.modori.model.BazaarDAO;
import com.modori.model.GroupBuyingDAO;
import com.modori.model.LoginDAO;
import com.modori.model.ProductDAO;
import com.modori.model.StudentCouncilDAO;

public class LoginAction implements Action {

	@Override
	   public String execute(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {
	      String page = "error.jsp";
	      
	      int id = Integer.parseInt(request.getParameter("id"));
	      String pw = request.getParameter("pw");
	      
	      if (id == 0000 && pw.equals("qwer1234")){
    		 page="admin.jsp";
	    		 
	      } else if (id == 1111 && pw.equals("20191234")) {
	    	 request.setAttribute("studentBazaarData", new StudentCouncilDAO().studentBazaarCon());
	    	 request.setAttribute("studentBazaarCalData", new StudentCouncilDAO().studentBazaarCalCon());
    		 page="studentAdmin.jsp";
	    		 
	      } else if(new LoginDAO().login(id, pw)) {
	         
	    	 if(new LoginDAO().deleteLogin(id)) {
	            
	         //세션을 등록
	         //S1
	         HttpSession session = request.getSession(true);
	         session.setAttribute("loginOK", id);

	         //Main에 필요한 데이터를 main.jsp에서 화면에 뿌려주기 위해서 
	         // jstl item 이름 > mainData
	         request.setAttribute("productData", new ProductDAO().productCon());
	         request.setAttribute("bazaarData", new BazaarDAO().bazaarCon());
	         request.setAttribute("auctionData", new AuctionDAO().auctionCon());
	         request.setAttribute("groupBuyingData", new GroupBuyingDAO().groupCon());
	         page = "main.jsp";
	         } else {
	            page="noMember.jsp";
	         } 
	         
	      } else {
	         page = "error.jsp";
	      }
	      return page;
	   }

	}
