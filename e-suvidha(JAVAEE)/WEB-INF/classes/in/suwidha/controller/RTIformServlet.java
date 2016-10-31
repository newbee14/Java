package in.suwidha.controller;

import in.suwidha.dao.RTIformUserDAO;
import in.suwidha.dao.RationcardUserDAO;
import in.suwidha.dao.VotercardUserDAO;
import in.suwidha.to.RTIformUserTO;
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


public class RTIformServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		try
		{
			
			RTIformUserDAO ud=new RTIformUserDAO();
			int id=ud.fetchID();
			System.out.println("id1="+id);
			request.setAttribute("rtidatt",id);
			RequestDispatcher rd=request.getRequestDispatcher("RTI.jsp");
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
		try
		{
				dt=sdf.parse(request.getParameter("date"));
		}
		 catch (java.text.ParseException e) 
		 {
			e.printStackTrace();
		 }
		String id=request.getParameter("idno");
		String nm=request.getParameter("name");
		String fm=request.getParameter("family_member");
		String rs=request.getParameter("resident");
		String in=request.getParameter("info");
		String rn=request.getParameter("receipt");
		String mb=request.getParameter("mobile");
		String eid=request.getParameter("email");
		String fa=request.getParameter("faxaddress");
		
		try
		{
			
			RTIformUserTO uto=new RTIformUserTO(Integer.parseInt(id),nm,fm,rs,in,rn,dt,Long.parseLong(mb),eid,fa);
			RTIformUserDAO ud=new RTIformUserDAO();
			boolean b=ud.registerUsers(uto);
		System.out.println("DAO Returns in RTI form Servlet : "+b);
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
