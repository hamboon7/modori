package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.modori.model.FindDAO;
import com.modori.model.LoginDAO;

public class FindAction implements Action {

	@Override
	public String execute(HttpServletRequest request){
		String page = "find.jsp"; //모달
		
		int id = Integer.parseInt(request.getParameter("id"));
		String email = request.getParameter("email");
		
		if(new FindDAO().find(id,email)) {
			page = "find2.jsp";
		}
		
		return page;
	}

}
