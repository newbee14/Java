package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.campus.BusinessDelegate.BusinessDelegateUtility;
import edu.campus.model.dao.LoginUserDB;
import edu.campus.model.to.UserTO;

public class StudentChangePasswordServlet extends HttpServlet 
{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
		System.out.println("IN SERVLET");
		int k=0;
		String username=request.getParameter("username");
		String oldpassword=request.getParameter("oldpassword");
		String newpassword=request.getParameter("newpassword");
		
		String oldencpass=BusinessDelegateUtility.getEncryptedPassword(oldpassword);
		String newencpass=BusinessDelegateUtility.getEncryptedPassword(newpassword);
		UserTO userpswd=new UserTO(username,oldencpass);
		LoginUserDB userdb=new LoginUserDB();
		
		UserTO var=userdb.checkOldPassword(userpswd);
		if(var.getPassword().equals(oldencpass))
		{
			
			UserTO userpswdnew=new UserTO(username,newencpass);
			k=userdb.changeOldPassword(userpswdnew);
			System.out.println("k= "+k);
			if(k>0)
			{
				//request.getRequestDispatcher("StudentHome.jsp").forward(request,response);
				response.getWriter().print("1");
			}
		}
		else if(k!=1)
		{
			response.getWriter().print("2");
		}
		}
	
	

}
