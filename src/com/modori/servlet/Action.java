package com.modori.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	/**입력 : request
	 * 출력 : 이동할 페이지
	 * 예외 : 서비스와 동일*/

	String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

}
