package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.to.StudentTO;


public class StudentViewDetailsServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String username=request.getParameter("username");
		System.out.println("username in Servlet: "+username);
		StudentTO studentto=new StudentTO(username);
		
		StudentRegisterDB studentdb=new StudentRegisterDB();
		
		StudentTO sto=studentdb.viewStudentDetails(studentto);
		
		if(sto!=null)
		{
			
			HttpSession session=request.getSession();
			session.setAttribute("stoatt",sto);
			response.getWriter().print("1");
		}
		else
		{
			
			response.getWriter().print("0");

		}	
	}

}
