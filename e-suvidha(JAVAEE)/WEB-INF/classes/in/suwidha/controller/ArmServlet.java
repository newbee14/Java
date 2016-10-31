package in.suwidha.controller;

import in.suwidha.dao.ArmlicenceUserDAO;
import in.suwidha.dao.RationcardUserDAO;
import in.suwidha.to.ArmlicenceUserTO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ArmServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		try
		{
			
			ArmlicenceUserDAO ud=new ArmlicenceUserDAO();
			int id=ud.fetchID();
			System.out.println("id1="+id);
			request.setAttribute("armidatt",id);
			RequestDispatcher rd=request.getRequestDispatcher("armlicence.jsp");
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
		System.out.println("Welcome in Arm Servlet.....");
		String nm=request.getParameter("name");
		String fn=request.getParameter("fathername");
		String pb=request.getParameter("place");
		String na=request.getParameter("nationality");
		String ad=request.getParameter("address");
		String ps=request.getParameter("police");
		String mb=request.getParameter("mobile");
		String eid=request.getParameter("email");

		 String oc=request.getParameter("occupation");
		 String ln=request.getParameter("licenceno");
		 String rd1=request.getParameter("radio1");
		 String rd2=request.getParameter("radio2");
		 String rd3=request.getParameter("radio3");
		 
		 String rd4=request.getParameter("radio4");
		 String rd5=request.getParameter("radio5");
		 String rd6=request.getParameter("radio6");
		 String rd7=request.getParameter("radio7");
		 String dt=request.getParameter("detail");
		 
		 String ty=request.getParameter("type");
		 String nd=request.getParameter("need");
		 String cl=request.getParameter("claim");
		 
		 
		try
		{
			
			ArmlicenceUserTO uto=new ArmlicenceUserTO(nm,fn,pb,na,ad,ps,Long.parseLong(mb),eid,oc,Integer.parseInt(ln),
													  rd1,rd2,rd3,rd4,rd5,rd6,rd7,dt,ty,nd,cl);
			ArmlicenceUserDAO ud=new ArmlicenceUserDAO();
			boolean b=ud.registerUsers(uto);
			System.out.println("DAO Returns in Arm licence Servlet : "+b);
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
