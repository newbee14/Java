package in.suwidha.controller;

import in.suwidha.dao.LoginUserDAO;
import in.suwidha.dao.MarriagecertUserDAO;
import in.suwidha.model.buisnessdelegate.Utility;
import in.suwidha.to.LoginUserTO;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




public class RegisterServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		try
		{
			
			LoginUserDAO ud=new LoginUserDAO();
			int id=ud.fetchID();
			System.out.println("id1="+id);
			request.setAttribute("userridatt",id);
			RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);		
		}
		catch(Exception e)
		{
			System.out.println("Exception in Aadhar Servlet "+e);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");  
		Date db=null;
		String dn1="null";
		String dt1="null";
		String ct1="null";
		String md1="null";
		int pc1=0;
		String nm=request.getParameter("name");
		String un=request.getParameter("user");
		String fn=request.getParameter("father");
		String p=request.getParameter("pass");
		String pw=Utility.getEncryptPassword(p);
		String cn=request.getParameter("contact");
		String em=request.getParameter("email");
		String ag=request.getParameter("age");
		String uid=request.getParameter("userid");
		System.out.println("userid:"+uid);
		
		String sx=request.getParameter("sex");
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
			
			LoginUserTO uto=new LoginUserTO(nm,un,fn,pw,Long.parseLong(cn),em,Integer.parseInt(ag),Integer.parseInt(uid),sx,dn,dn1,ct,ct1,md,md1,dt,dt1,Integer.parseInt(pc),pc1,db,pb,bg);
			LoginUserDAO ud=new LoginUserDAO();
			boolean b=ud.registerUsers(uto);
			System.out.println("DAO Returns in Register Servlet : "+b);
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

}
