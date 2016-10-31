package in.suwidha.controller;

import in.suwidha.dao.MarriagecertUserDAO;
import in.suwidha.dao.RationcardUserDAO;
import in.suwidha.dao.VotercardUserDAO;
import in.suwidha.to.MarriagecertUserTO;
import in.suwidha.to.VotercardUserTO;

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


public class VotercardServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		try
		{
			
			VotercardUserDAO ud=new VotercardUserDAO();
			int id=ud.fetchID();
			System.out.println("id1="+id);
			request.setAttribute("vidatt",id);
			RequestDispatcher rd=request.getRequestDispatcher("voter.jsp");
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
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");  
		Date dt=null;
		Date db=null;
		try
		{
				dt=sdf.parse(request.getParameter("date"));
				db=sdf.parse(request.getParameter("dob"));
		}
		 catch (java.text.ParseException e) 
		 {
			e.printStackTrace();
		 }
		String nm=request.getParameter("name");
		String sn=request.getParameter("surname");
		String fn=request.getParameter("fname");
		String mn=request.getParameter("mname");
		String gn=request.getParameter("gender");
		String pb=request.getParameter("place");
		String dn=request.getParameter("doorno");
		String st=request.getParameter("street");
		String po=request.getParameter("postoffice");
		String tl=request.getParameter("tehsil");
		String pc=request.getParameter("pincode");
		String ct=request.getParameter("city");
		String dst=request.getParameter("district");
		String vn=request.getParameter("voterno");
		String nm1=request.getParameter("name1");
		String rl1=request.getParameter("relation1");
		String pn1=request.getParameter("part1");
		String id1=request.getParameter("cardno1");
		String mb1=request.getParameter("mobile1");
		
		String nm2=request.getParameter("name2");
		String rl2=request.getParameter("relation2");
		String pn2=request.getParameter("part2");
		String id2=request.getParameter("cardno2");
		String mb2=request.getParameter("mobile2");
		
		try
		{
			
			VotercardUserTO uto=new VotercardUserTO(nm,sn,fn,mn,db,gn,pb,dn,st,po,tl,Integer.parseInt(pc),ct,dst,Integer.parseInt(vn),nm1,rl1,pn1,id1,Long.parseLong(mb1),nm2,
													rl2,pn2,id2,Long.parseLong(mb2),dt);
			VotercardUserDAO ud=new VotercardUserDAO();
			boolean b=ud.registerUsers(uto);
		System.out.println("DAO Returns in Voter card Servlet : "+b);
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
			System.out.println("Exception in Votercard Servlet "+e);
		}
	}

}
