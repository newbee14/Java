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

import edu.campus.model.dao.StaffRegisterDAO;
import edu.campus.model.to.StaffTO;
import edu.campus.model.to.UserTO;


public class StaffModifyDetailsServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
		int k=0;
		System.out.println("Servlet");
		String staffid=request.getParameter("staffid");
		String facultyname=request.getParameter("facultyname");
		String designation=request.getParameter("designation");
		String branch=request.getParameter("branch");
		String qualification=request.getParameter("qualification");
		String gender=request.getParameter("gender");
		Date dob=null;
		DateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		try{
			dob=sdf.parse(request.getParameter("dob"));
		
		}
		catch(ParseException e){
			System.out.print("parse exception while dob"+e);
		}
		
		Date doj=null;
		DateFormat sdfobj=new SimpleDateFormat("yyyy-MM-dd");
		try{
			doj=sdfobj.parse(request.getParameter("doj"));
		
		}
		catch(ParseException e){
			System.out.print("parse exception while doj"+e);
		}
		Long phone=Long.parseLong(request.getParameter("phone"));
		String address=request.getParameter("address");
		StaffTO staffobj=new StaffTO(staffid,facultyname,designation,branch,qualification,gender,dob,doj,phone,address); 
		StaffRegisterDAO staffdb=new StaffRegisterDAO();
		k=staffdb.modifyStaffDetails(staffobj);
		System.out.println("S5"+k);
		HttpSession session=request.getSession(false);
		String usertype="";
		if(session!=null)
		{
			UserTO userobj=(UserTO)session.getAttribute("usertypeatt");
			usertype=userobj.getUsertype();
		}
			
		
		
		if(k>0)
		{
			System.out.println("k : "+k+"usertype  : "+usertype);
			if(usertype.equalsIgnoreCase("Teacher"))
			{
				response.getWriter().print("1");
			}
			else if(usertype.equalsIgnoreCase("TransportOfficer"))
			{
				response.getWriter().print("2");
			}
			else if(usertype.equalsIgnoreCase("warden") || usertype.equalsIgnoreCase("librarian") || usertype.equalsIgnoreCase("accountant"))
			{
				
				response.getWriter().print("3");
			}
		}
	}
}
