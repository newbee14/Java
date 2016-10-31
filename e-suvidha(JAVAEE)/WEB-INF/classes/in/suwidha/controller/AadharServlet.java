package in.suwidha.controller;

import in.suwidha.dao.AadharUserDAO;
import in.suwidha.to.AadharUserTO;

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


public class AadharServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		try
		{
			
			AadharUserDAO ud=new AadharUserDAO();
			int id=ud.fetchID();
			System.out.println("id1="+id);
			request.setAttribute("eidatt",id);
			RequestDispatcher rd=request.getRequestDispatcher("aadharcard.jsp");
			rd.forward(request, response);		
		
		}
		catch(Exception e)
		{
			System.out.println("Exception in Aadhar Servlet "+e);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{ 
		System.out.println(request.getParameter("d"));
		HttpSession session=request.getSession(false);
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");  
		Date d=null;
		Date db=null;
		try
		{
				d=sdf.parse(request.getParameter("d"));
				db=sdf.parse(request.getParameter("db"));
		}
		 catch (java.text.ParseException e) 
		 {
			 System.out.println("exception regarding date"+e);
			
		 }
		
		String en=request.getParameter("enm");
		String nm=request.getParameter("name");
		String fn=request.getParameter("fname");
		String mn=request.getParameter("mname");
		String gn=request.getParameter("gender");
		String dn=request.getParameter("addn");
		String ct=request.getParameter("adct");
		String md=request.getParameter("admd");
		String dt=request.getParameter("addt");
		String pc=request.getParameter("pincode");
		String mb=request.getParameter("mobile");
		String eid=request.getParameter("email");
		String idp=request.getParameter("proof1");
		String adp=request.getParameter("proof2");
		System.out.println("id proof add:"+idp);
		System.out.println("address proof add:"+adp);
		try
		{
			
			AadharUserTO uto=new AadharUserTO(d,Integer.parseInt(en),nm,fn,mn,db,gn,dn,ct,md,dt,Integer.parseInt(pc),Long.parseLong(mb),eid);
			AadharUserDAO ud=new AadharUserDAO();
			boolean b=ud.registerUsers(uto);
		System.out.println("DAO Returns in Aadhaar Servlet : "+b);
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
			System.out.println("Exception in Aadhar Servlet "+e);
		}
	}

}
