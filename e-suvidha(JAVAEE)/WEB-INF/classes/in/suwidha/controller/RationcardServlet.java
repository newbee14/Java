package in.suwidha.controller;

import in.suwidha.dao.AadharUserDAO;
import in.suwidha.dao.BuspassUserDAO;
import in.suwidha.dao.RationcardUserDAO;
import in.suwidha.to.BuspassUserTO;
import in.suwidha.to.RationcardUserTO;

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


public class RationcardServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		try
		{
			
			RationcardUserDAO ud=new RationcardUserDAO();
			int id=ud.fetchID();
			System.out.println("id1="+id);
			request.setAttribute("ridatt",id);
			RequestDispatcher rd=request.getRequestDispatcher("rationcard.jsp");
			rd.forward(request, response);		
		
		}
		catch(Exception e)
		{
			System.out.println("Exception in Aadhar Servlet "+e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		
		String nm=request.getParameter("name");
		String fn=request.getParameter("fathername");
		String dn=request.getParameter("addn");
		String ct=request.getParameter("adct");
		String md=request.getParameter("admd");
		String dt=request.getParameter("addt");
		String pc=request.getParameter("pincode");
		String no=request.getParameter("rno");

		 String nm1=request.getParameter("name1");
		 String na1=request.getParameter("nationality1");
		 String ag1=request.getParameter("age1");
		 String fn1=request.getParameter("fathername1");
		 String rl1=request.getParameter("relation1");
		 
		 String nm2=request.getParameter("name2");
		 String na2=request.getParameter("nationality2");
		 String ag2=request.getParameter("age2");
		 String fn2=request.getParameter("fathername2");
		 String rl2=request.getParameter("relation2");
		 
		 String nm3=request.getParameter("name3");
		 String na3=request.getParameter("nationality3");
		 String ag3=request.getParameter("age3");
		 String fn3=request.getParameter("fathername3");
		 String rl3=request.getParameter("relation3");
		 
		 String eid=request.getParameter("email");
		 
		try
		{
			
			RationcardUserTO uto=new RationcardUserTO(nm,fn,dn,ct,md,dt,Integer.parseInt(pc),Integer.parseInt(no),nm1,na1,
					Integer.parseInt(ag1),fn1,rl1,nm2,na2,Integer.parseInt(ag2),fn2,rl2,nm3,na3,Integer.parseInt(ag3),fn3,rl3,eid);
			RationcardUserDAO ud=new RationcardUserDAO();
			boolean b=ud.registerUsers(uto);
		System.out.println("DAO Returns in Rationcard Servlet : "+b);
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
			System.out.println("Exception in Rationcard Servlet "+e);
		}
	}
	
}
