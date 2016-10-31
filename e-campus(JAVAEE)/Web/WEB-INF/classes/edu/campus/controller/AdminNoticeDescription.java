package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.NoticeDAO;

 public class AdminNoticeDescription extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String description=null;
		int noticeid=Integer.parseInt(request.getParameter("noticeid"));
		System.out.println(noticeid);
		NoticeDAO ndao=new NoticeDAO();
		description=ndao.fetchNoticeDescription(noticeid);
		System.out.print("description is "+description);
		HttpSession session=request.getSession();
		session.setAttribute("descriptionatt",description);
		response.getWriter().print("1");
	}

}
