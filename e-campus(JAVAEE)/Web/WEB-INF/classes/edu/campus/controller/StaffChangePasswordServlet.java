package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.BusinessDelegate.BusinessDelegateUtility;
import edu.campus.model.dao.LoginUserDB;
import edu.campus.model.to.UserTO;

public class StaffChangePasswordServlet extends HttpServlet 
{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
		
		int k=0;
		String usertype="";
		String username=request.getParameter("username");
		String oldpassword=request.getParameter("oldpassword");
		String newpassword=request.getParameter("newpassword");
		String encoldpass=BusinessDelegateUtility.getEncryptedPassword(oldpassword);
		String encnewpass=BusinessDelegateUtility.getEncryptedPassword(newpassword);
		UserTO userpswd=new UserTO(username,encoldpass);
		LoginUserDB userdb=new LoginUserDB();
		
		UserTO var=userdb.checkOldPassword(userpswd);
		
		if(var.getPassword().equals(encoldpass))
		{
			
			UserTO userpswdnew=new UserTO(username,encnewpass);
			k=userdb.changeOldPassword(userpswdnew);
			
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
		else
		{
			response.getWriter().print("4");
		}
		}
	
	

}
