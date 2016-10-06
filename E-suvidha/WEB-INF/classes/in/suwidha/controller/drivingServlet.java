package in.suwidha.controller;

import in.suwidha.dao.AadharUserDAO;
import in.suwidha.dao.DrivingDAO;
import in.suwidha.to.AadharUserTO;
import in.suwidha.to.DrivingTO;

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


public class drivingServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		try
		{
			
			DrivingDAO ud=new DrivingDAO();
			int id=ud.fetchID();
			request.setAttribute("dlidatt",id);
			RequestDispatcher rd=request.getRequestDispatcher("Drivinglic.jsp");
			rd.forward(request, response);
			if(id!=0)
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
			System.out.println("Exception in Driving Servlet "+e);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		System.out.println("Driving servlet");
		String spother="null",doorno_temp="null",village_temp="null",mandal_temp="null",district_temp="null";
		int pin_temp=0;
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");  
		Date lic_dt=null;
		Date dateob=null,cer_dt=null;
		try
		{
				lic_dt=sdf.parse(request.getParameter("licdt"));
				dateob=sdf.parse(request.getParameter("dob"));
				cer_dt=sdf.parse(request.getParameter("cer_dt1"));
		}
		 catch (java.text.ParseException e) 
		 {
			e.printStackTrace();
		 }
		String lic_no=request.getParameter("licno");
		String lic_la=request.getParameter("licla");
		String motor1=request.getParameter("motor");
		if(request.getParameter("other")!="")
			spother=request.getParameter("other");
		
		String nm=request.getParameter("name");
		String sd=request.getParameter("fname");
		String gn=request.getParameter("gender");
		String doorno=request.getParameter("door");
		if(request.getParameter("door_temp")!="")
			doorno_temp=request.getParameter("door_temp");
		String village=request.getParameter("village1");
		if(request.getParameter("vill")!="")
			village_temp=request.getParameter("vill");
		
		String mandal=request.getParameter("mandal1");
		if(request.getParameter("mandal2")!="")
			mandal_temp=request.getParameter("mandal2");
		
		String district=request.getParameter("district1");
		if(request.getParameter("district2")!="")
			district_temp=request.getParameter("district2");
		
		int pin=Integer.parseInt(request.getParameter("pin1"));
		if(request.getParameter("pin2")!="")
			pin_temp=Integer.parseInt(request.getParameter("pin2"));
		
		String edu=request.getParameter("education");
		String idmarks1=request.getParameter("idmarks");
		String idmarks2=request.getParameter("idmarks11");
		String bg=request.getParameter("bloodgroup");
		String endorsed=request.getParameter("endorsed1");
		String dis_reason=request.getParameter("dis_reason1");
		String cer_no=request.getParameter("cer_no1");
		String issuedby=request.getParameter("issuedby1");
		String r1=request.getParameter("re1");
		String r2=request.getParameter("re2");
		String r3=request.getParameter("re3");
		String r4=request.getParameter("re4");
		String r5=request.getParameter("re5");
		try
		{
			
			DrivingTO uto=new DrivingTO(Integer.parseInt(lic_no),lic_dt,lic_la,motor1,spother,nm,sd,gn,doorno,doorno_temp,
										village,village_temp,mandal,mandal_temp,district,district_temp,
										pin,pin_temp,dateob,edu,idmarks1,idmarks2,bg,endorsed,dis_reason,cer_no,
										cer_dt,issuedby,r1,r2,r3,r4,r5);
			DrivingDAO ud=new DrivingDAO();
			boolean b=ud.registerUsers(uto);
		System.out.println("DAO Returns in Driving Servlet : "+b);
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
			System.out.println("Exception in Driving Servlet "+e);
		}
	}
	

}
