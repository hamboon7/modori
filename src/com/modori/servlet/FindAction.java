package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modori.model.FindDAO;
import com.modori.model.RandomDAO;

import java.util.UUID;

public class FindAction implements Action {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String page = "find.jsp"; //모달

      int id = Integer.parseInt(request.getParameter("id"));
      String email = request.getParameter("email");


      String uuid = UUID.randomUUID().toString().replaceAll("-", ""); // -를 제거해 주었다.
      uuid = uuid.substring(0, 8); //uuid를 앞에서부터 10자리 잘라줌.
      
      String pw = uuid;
      request.setAttribute("STR",pw);

      if(new FindDAO().find(id,email)) {
         new RandomDAO().random(pw,id);
         page = "find2.jsp";
      }

      return page;
   }

}