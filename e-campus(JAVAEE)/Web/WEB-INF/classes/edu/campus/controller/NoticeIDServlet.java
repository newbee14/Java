package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.NoticeDAO;

public class NoticeIDServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticeDAO obj=new NoticeDAO();
		String designation="hod";
		
		String hodnoticetable="noticehod_tab";
		String adminnoticetable="noticeadmin_tab";
		int noticeid=0;
		if(designation.equalsIgnoreCase("hod"))
		{
			noticeid=obj.autoIncrementNoticeID(hodnoticetable);
			HttpSession session=request.getSession();
			session.setMaxInactiveInterval(1000);
			
			session.setAttribute("noticeidatt",noticeid);
			
			response.getWriter().print(noticeid);
		}
		else if(designation.equalsIgnoreCase("admin"))
		{
			noticeid=obj.autoIncrementNoticeID(adminnoticetable);
			HttpSession session=request.getSession();
			session.setMaxInactiveInterval(1000);
			
			session.setAttribute("noticeidatt",noticeid);
			
			response.getWriter().print(noticeid);
		}
		
		
	
	}
}
