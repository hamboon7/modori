package com.modori.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.modori.servlet.Action;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String cmd = request.getParameter("cmd");
		if(cmd==null || cmd.trim().length() <=5) 
			cmd = "index";	
		String page="";
		Action a = null;
		switch(cmd) {
		case "loginUI":
			page = "login.jsp";
			break;
		case "loginAction":
			a = new LoginAction();
			page = a.execute(request);
			break;
		case "memberAction":
			a = new MemberAction();
			page = a.execute(request);
			break;
		case "findUI":
			page = "find.jsp";
			break;
		case "findAction":
			a = new FindAction();
			page = a.execute(request);
			break;
		case "findUpdateAction":
			a = new FindUpdateAction();
			page = a.execute(request);
			break;
		case "findUpdate2Action":
			a = new FindUpdate2Action();
			page = a.execute(request);
			break;
		case "mypageAction":
			a = new MypageAction();
			page = a.execute(request);
			break;
		case "searchAction":
			a = new SearchAction();
			page = a.execute(request);
			break;
		case "enrollUI":
			page = "enroll.jsp";
			break;
		case "enrollAction":
			a = new EnrollAction();
			page = a.execute(request);
			break;
		case "index":
		default :
			page = "index.html";
			break;
		}

		//3 View 페이지 이동 <고정코드>
		request.getRequestDispatcher("/" + page).forward(request, response);
	}
}
