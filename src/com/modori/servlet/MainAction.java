package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.modori.model.MainDAO;

public class MainAction implements Action {

	@Override
	public String execute(HttpServletRequest request) throws ServletException, IOException {
		new MainDAO().mainCon();
		return null;
	}

}
