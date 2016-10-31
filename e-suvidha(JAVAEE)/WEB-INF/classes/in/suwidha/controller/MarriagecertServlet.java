package in.suwidha.controller;

import in.suwidha.dao.AadharUserDAO;
import in.suwidha.dao.MarriagecertUserDAO;
import in.suwidha.dao.RationcardUserDAO;
import in.suwidha.to.AadharUserTO;
import in.suwidha.to.MarriagecertUserTO;

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


public class MarriagecertServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			try
			{
			
				MarriagecertUserDAO ud=new MarriagecertUserDAO();
				int id=ud.fetchID();
				System.out.println("id1="+id);
				request.setAttribute("midatt",id);
				RequestDispatcher rd=request.getRequestDispatcher("marriage.jsp");
				rd.forward(request, response);		
		
			}
			catch(Exception e)
			{
				System.out.println("Exception in Aadhar Servlet "+e);
			}
		}
		else
		{
			PrintWriter out =response.getWriter();
			out.print("Session Has Been Expired");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");  
		Date dt=null;
		Date db=null,bdb=null,dm=null;
		if(session!=null)
		{
			try
			{
				dt=sdf.parse(request.getParameter("date"));
				db=sdf.parse(request.getParameter("dob"));
				bdb=sdf.parse(request.getParameter("bdob"));
				dm=sdf.parse(request.getParameter("mdate"));
			}
			catch (java.text.ParseException e) 
			{
				e.printStackTrace();
			}
			String is=request.getParameter("issueno");
			String nm=request.getParameter("name");
			String fn=request.getParameter("fname");
			String mn=request.getParameter("mname");
			String na=request.getParameter("nationality");
			String oc=request.getParameter("occupation");
			String rs=request.getParameter("resident");
		
			String bnm=request.getParameter("bname");
			String bfn=request.getParameter("bfname");
			String bmn=request.getParameter("bmname");
			String bna=request.getParameter("bnationality");
			String boc=request.getParameter("boccupation");
			String brs=request.getParameter("bresident");
			String dn=request.getParameter("addn");
			String ct=request.getParameter("adct");
			String md=request.getParameter("admd");
			String dst=request.getParameter("addt");
			String pc=request.getParameter("pincode");
			String eid=request.getParameter("email");
			try
			{
			
				MarriagecertUserTO uto=new MarriagecertUserTO(Integer.parseInt(is),dt,nm,fn,mn,db,na,oc,rs,bnm,bfn,bmn,bdb,bna,boc,brs,dm,dn,ct,md,
																dst,Integer.parseInt(pc),eid);
				MarriagecertUserDAO ud=new MarriagecertUserDAO();
				boolean b=ud.registerUsers(uto);
				System.out.println("DAO Returns in Marriage cert Servlet : "+b);
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
				System.out.println("Exception in Marriagecert Servlet "+e);
			}
		}
	
		else
		{
			PrintWriter out =response.getWriter();
			out.print("Session Has Been Expired");
		}
	}
}
