package com.douzone.emaillist.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmaillistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmaillistServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		if("list".equals(action)) {
			
		} else if("form".equals(action)) {
			
		} else if("add".equals(action)) {
			
		} else {
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}