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

import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.to.StudentTO;
import edu.campus.model.to.UserTO;


public class StudentModifyDetailsServlet extends HttpServlet 
{
	int k=0;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
		System.out.println("Servlet");
		String username=request.getParameter("username");
		String name=request.getParameter("name");
		String branch=request.getParameter("branch");
		int batch=Integer.parseInt(request.getParameter("batch"));
		Date dob=null;
		DateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		try{
			dob=sdf.parse(request.getParameter("dob"));
		
		}
		catch(ParseException e){
			System.out.print("parse exception while dob"+e);
		}
		
		String gender=request.getParameter("gender");
		Long mobilenumber=Long.parseLong(request.getParameter("mobilenumber"));
		String address=request.getParameter("address");
		StudentTO stm=new StudentTO(username,name,branch,batch,gender,dob,mobilenumber,address); 
		StudentRegisterDB sdb=new StudentRegisterDB();
		int k=sdb.modifyStudentDetails(stm);
		String usertype="";
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			UserTO userobj=(UserTO)session.getAttribute("usertypeatt");
			usertype=userobj.getUsertype();
		}
		if(k>0)
			{
			if(usertype.equalsIgnoreCase("Teacher") || usertype.equalsIgnoreCase("hod"))
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
