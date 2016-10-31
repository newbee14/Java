package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO.LoginDAO;
import model.DAO.RegisterDAO;
import model.TO.LoginTO;

public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String u=request.getParameter("login");
		String p=request.getParameter("password");
		String t=request.getParameter("usertype");
		System.out.println(u+" "+p+" "+t);
		LoginTO lo=new LoginTO();
		lo.setUsername(u);
		lo.setPassword(p);
		lo.setUsertype(t);
		
		PrintWriter pw=response.getWriter();
		
		LoginDAO ldo=new LoginDAO();
		int result=ldo.checkUserValidation(lo);
		
		System.out.println("Value Returned "+result);
		RegisterDAO object = new RegisterDAO();
		String name=object.getUser(u);
		
		if(result==0)
		{
			pw.println("0");
		}
		
		else 	if(result==1 && t.equals("applicant"))
		{
			System.out.println("applicat Success Login.... ");
			HttpSession session=request.getSession();
			session.setAttribute("username", name);
			session.setAttribute("userid", u);
			pw.println("1");
			//RequestDispatcher rd=request.getRequestDispatcher("ApplicantProfile.jsp");
			//rd.forward(request,response);
	//	response.sendRedirect("ApplicantProfile.jsp");
		}
		else if(result==1 && t.equals("hr"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", name);
			session.setAttribute("userid", u);
		     System.out.println(name+" "+u);
			pw.println("2");
			}
		else if(result==1 && t.equals("interviewer"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", name);
			session.setAttribute("userid", u);
		     System.out.println(name+" "+u);
			pw.println("4");
			
		}
		else if(result==1 && t.equals("manager"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", name);
			session.setAttribute("userid", u);
		     System.out.println(name+" "+u);
			pw.println("3");
			
		}
		
	}

	}

