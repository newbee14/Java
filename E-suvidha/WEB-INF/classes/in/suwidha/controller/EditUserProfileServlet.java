package in.suwidha.controller;

import in.suwidha.dao.LoginUserDAO;
import in.suwidha.to.LoginUserTO;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class EditUserProfileServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		int id=Integer.parseInt(request.getParameter("id"));
		if(id==1 && session!=null)
		{
			try
				{
					System.out.println("1");
					int userid=(Integer)session.getAttribute("useridatt");
					System.out.println("userid="+userid);
					LoginUserDAO ud=new LoginUserDAO();
					LoginUserTO to=new LoginUserTO(); 
					ud.fetchInfo(userid,to);
					request.setAttribute("userinfoatt",to);
					System.out.println("hei");
					RequestDispatcher rd=request.getRequestDispatcher("editUserProfile.jsp");
					rd.forward(request, response);		
				}
				catch(Exception e)
				{
					System.out.println("Exception in Edit User Profile Servlet "+e);
				}
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("sessionExpired.jsp");
				rd.forward(request, response);
				
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("post method");
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			int userid=(Integer)session.getAttribute("useridatt");
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");  
			Date db=null;
			String dn1="null";
			String dt1="null";
			String ct1="null";
			String md1="null";
			int pc1=0;
			String nm=request.getParameter("name");
			String fn=request.getParameter("father");
			String cn=request.getParameter("contact");
			String em=request.getParameter("email");
			String ag=request.getParameter("age");
			String dn=request.getParameter("addn");
			if((request.getParameter("addn1"))!="")
			dn1=request.getParameter("addn1");
			String ct=request.getParameter("adct");
			if((request.getParameter("adct1"))!="")
			ct1=request.getParameter("adct1");
			String md=request.getParameter("admd");
			if((request.getParameter("admd1"))!="")
			md1=request.getParameter("admd1");
			String dt=request.getParameter("addt");
			if((request.getParameter("addt1"))!="")
			dt1=request.getParameter("addt1");
			
			String pc=request.getParameter("pin");
			if((request.getParameter("pin1"))!="")
			pc1=Integer.parseInt(request.getParameter("pin1"));
			try
			{
					db=sdf.parse(request.getParameter("dob"));
			}
			 catch (java.text.ParseException e) 
			 {
				
				e.printStackTrace();
			 }
			String pb=request.getParameter("pob");
			String bg=request.getParameter("bgrp");
			try
			{
				
				LoginUserTO uto=new LoginUserTO(nm,fn,Long.parseLong(cn),em,Integer.parseInt(ag),dn,dn1,ct,ct1,md,md1,dt,dt1,Integer.parseInt(pc),pc1,db,pb,bg,
													userid);
				LoginUserDAO ud=new LoginUserDAO();
				boolean b=ud.updateUsersInfo(uto);
				System.out.println("DAO Returns in edit user profile Servlet : "+b);
				if(b==true)
				{
					PrintWriter out=response.getWriter();
					out.println("1");
				
				}
				else
				{
					PrintWriter out=response.getWriter();
					out.println("0");
				
				}
			}
			catch(Exception e)
			{
				System.out.println("Exception in RegisterServlet "+e);
			}
		}
		else
		{
			
		}
	}
}
