package in.suwidha.controller;

import in.suwidha.dao.AadharUserDAO;
import in.suwidha.dao.BuspassUserDAO;
import in.suwidha.dao.RationcardUserDAO;
import in.suwidha.to.AadharUserTO;
import in.suwidha.to.BuspassUserTO;

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


public class BuspassServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		try
		{
			
			BuspassUserDAO ud=new BuspassUserDAO();
			int id=ud.fetchID();
			System.out.println("id1="+id);
			request.setAttribute("bidatt",id);
			RequestDispatcher rd=request.getRequestDispatcher("buspass.jsp");
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
		
		String ty=request.getParameter("type");
		String ty1=request.getParameter("type1");
		String fn=request.getParameter("firstname");
		String ln=request.getParameter("lastname");
		String dn=request.getParameter("addn");
		String ct=request.getParameter("adct");
		String md=request.getParameter("admd");
		String dt=request.getParameter("addt");
		String pc=request.getParameter("pincode");
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");  
		Date db=null;
		try
		{
				db=sdf.parse(request.getParameter("dob"));
		}
		 catch (java.text.ParseException e) 
		 {
			e.printStackTrace();
		 }
		
		 String da=request.getParameter("disability");
		 String rd1=request.getParameter("radio1");
		 String rd2=request.getParameter("radio2");
		 String rd3=request.getParameter("radio3");
		 String rd4=request.getParameter("radio4");
		 String rd5=request.getParameter("radio5");
		 String rd6=request.getParameter("radio6");
		 String rd7=request.getParameter("radio7");
		 String rd8=request.getParameter("radio8");
		 String rd9=request.getParameter("radio9");
		 String rd10=request.getParameter("radio10");
		 String rd11=request.getParameter("radio11");
		 String rd12=request.getParameter("radio12");
		 String dnm=request.getParameter("doctorname");
		 String dmb=request.getParameter("mobile");
		String eid=request.getParameter("email");
		String tn=request.getParameter("tokenno");
		try
		{
			
			BuspassUserTO uto=new BuspassUserTO(ty,ty1,fn,ln,dn,ct,md,dt,Integer.parseInt(pc),db,da,rd1,rd2,rd3,rd4,rd5,rd6,
					rd7,rd8,rd9,rd10,rd11,rd12,dnm,Long.parseLong(dmb),eid,Integer.parseInt(tn));
			BuspassUserDAO ud=new BuspassUserDAO();
			boolean b=ud.registerUsers(uto);
		System.out.println("DAO Returns in Buspass Servlet : "+b);
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
