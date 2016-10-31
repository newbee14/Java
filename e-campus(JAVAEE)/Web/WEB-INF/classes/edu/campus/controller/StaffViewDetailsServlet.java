package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.StaffRegisterDAO;
import edu.campus.model.to.StaffTO;


public class StaffViewDetailsServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("s1");
		String staffid=request.getParameter("staffid");
		System.out.println("username in Servlet: "+staffid);
		StaffTO staffto=new StaffTO(staffid);
		
		StaffRegisterDAO staffdb=new StaffRegisterDAO();
		
		StaffTO staffobj=staffdb.viewStaffDetails(staffto);
		
		if(staffobj!=null)
		{
			
			HttpSession session=request.getSession();
			session.setAttribute("staffatt",staffobj);
			response.getWriter().print("1");
		}
		else
		{
			
			response.getWriter().print("0");

		}	
	}

}
