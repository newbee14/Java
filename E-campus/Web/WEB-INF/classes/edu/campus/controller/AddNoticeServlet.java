package edu.campus.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.NoticeDAO;
import edu.campus.model.to.HodNoticeTO;
import edu.campus.model.to.NoticeTO;
import edu.campus.model.to.StaffTO;

public class AddNoticeServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String name=null;
		String branch=null;
		String designation=null;
		
		
		int noticeid=Integer.parseInt(request.getParameter("noticeid"));
	String title=request.getParameter("title");
	DateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	Date d=null;

	try{
		d =sdf.parse(request.getParameter("date"));
	
	}
	catch(ParseException e){
		System.out.print("parse exception while date"+e);
	}
	String description=request.getParameter("description");
	
	HttpSession session=request.getSession(false);
	if(session!=null)
	{
		StaffTO sto =(StaffTO)session.getAttribute("staffatt");
		if(sto!=null)
		{
		name=sto.getFacultyname();
		branch=sto.getBranch();
		designation=sto.getDesignation();
		System.out.println("values from sessions are "+name+branch+designation);
		}		
		else
		{
			designation="admin";
		}
	}
	
	
	
	
	System.out.println(noticeid+title+d+description);
	NoticeDAO ndao=new NoticeDAO();
	if(designation.equalsIgnoreCase("hod"))
	{
		HodNoticeTO hodnto=new HodNoticeTO(noticeid,title,d,description,name,branch);
		int p=ndao.addNoticeByHod(hodnto);
		if(p>0)
		{
			System.out.println("Notice Added Succesfully...");
			request.getRequestDispatcher("StaffHome.jsp").forward(request, response);
		}
		else
		{
			System.out.println("notice not added .....");
		}
	}
	else
	{
		NoticeTO nto=new NoticeTO(noticeid,title,d,description);
		int k=ndao.addNoticeByAdmin(nto);
		if(k>0)
			{
				System.out.println("Notice Added Succesfully...");
				request.getRequestDispatcher("StaffHome.jsp").forward(request, response);
			}
		else
		{
			System.out.println("notice not added .....");
		}
	}
	}
}
