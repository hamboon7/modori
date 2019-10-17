package com.modori.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.StudentCouncilDAO;

public class StudentCouncilBazzarUpdateAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = "studentBazzarInfoUpdateAdmin.jsp";
		
		int num = Integer.parseInt(request.getParameter("number"));
		
		String name = new String(request.getParameter("name").getBytes("8859_1"), "UTF-8");
		String bank = new String(request.getParameter("bank").getBytes("8859_1"), "UTF-8");
		String account = new String(request.getParameter("account").getBytes("8859_1"), "UTF-8");
		String date1 = request.getParameter("startDate");
		String date2 = request.getParameter("endDate");
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date startDate = null, endDate = null;
		try {
			startDate = transFormat.parse(date1);
			endDate = transFormat.parse(date2);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			page = "studentBazzarInfoAdmin.jsp";
			e.printStackTrace();
		}
		
		request.setAttribute("bazaarUpdateData", new StudentCouncilDAO().bazaarUpdateCon
				(num, name, bank, account, startDate, endDate));
		request.setAttribute("bazaarInfoData", new StudentCouncilDAO().bazaarInfoCon());
		page = "studentBazzarInfoAdmin.jsp";
		
		
		return page;
	}

}
