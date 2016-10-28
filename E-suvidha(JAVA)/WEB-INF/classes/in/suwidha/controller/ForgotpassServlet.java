package in.suwidha.controller;

import in.suwidha.dao.AadharUserDAO;
import in.suwidha.dao.LoginUserDAO;
import in.suwidha.model.buisnessdelegate.Utility;
import in.suwidha.model.mail.email.SendMail;
import in.suwidha.to.AadharUserTO;
import in.suwidha.to.LoginUserTO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ForgotpassServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String p = null;
		boolean t=false;;
		String nm=request.getParameter("name");
		String eid=request.getParameter("email");
		long mb=Long.parseLong(request.getParameter("mobile"));
		

		try
		{
			
			LoginUserTO uto=new LoginUserTO(nm,eid,mb);
			LoginUserDAO ud=new LoginUserDAO();
			boolean b=ud.checkUserInfo(uto);
			System.out.println("DAO Returns in Forgotpass Servlet : "+b);
			if(b)
			{
						
				String s=SendMail.sendForgotPasswordQuery(nm,eid,mb);
				System.out.println("Mail Sending Confirmation in Forgotpass Servlet : ");
				if(s!=null)
				{
					System.out.println("Mail is sent ");
					p=Utility.getEncryptPassword(s);
					t=ud.updateUserInfo(uto,p);
				}
				else
				{
					System.out.println("Error in Mail sending ");
					
				}
				if(t)
				{
					PrintWriter out=response.getWriter();
					out.println("1");
				}
			
			}
			else
			{
				PrintWriter out=response.getWriter();
				out.println("0");
			
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception in forgotpass Servlet "+e);
		}
	}

}
