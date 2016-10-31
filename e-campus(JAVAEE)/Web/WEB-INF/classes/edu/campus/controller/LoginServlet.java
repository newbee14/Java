package edu.campus.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.BusinessDelegate.BusinessDelegateUtility;
import edu.campus.model.dao.LoginUserDB;
import edu.campus.model.dao.StaffRegisterDAO;
import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.to.StaffTO;
import edu.campus.model.to.StudentTO;
import edu.campus.model.to.UserTO;

public class LoginServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
   
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String username,usertype,password;
		String user="";
		String name="";
		usertype=request.getParameter("usertype");
		username=request.getParameter("username");
		password=request.getParameter("password");
		
		Date systemdate=BusinessDelegateUtility.getSystemDate();
		HttpSession session1=request.getSession();
		session1.setAttribute("systemdateatt",systemdate);
		System.out.println("System date : "+systemdate);
		UserTO lto=null;
		System.out.println("usertype"+usertype);
		
		if(!usertype.equals("admin"))
		{
			String encpass=BusinessDelegateUtility.getEncryptedPassword(password);
			lto=new UserTO(usertype,username,encpass);
		}
		else
		{
			lto=new UserTO(usertype,username,password);
		}
		
	
		LoginUserDB ldb=new LoginUserDB();
		UserTO objto=ldb.userLogin(lto);
		
		user=objto.getUsername();
		name=objto.getName();

		HttpSession session=request.getSession();
		session.setAttribute("usertypeatt",lto);
		UserTO uto=(UserTO)session.getAttribute("usertypeatt");
		//System.out.print("usertype of login user :"+ uto.getUsertype().length());
		
		if(objto!=null)
		{
			if(objto.getUsertype().equals("admin"))
			{	
				response.getWriter().print("1");
						
				StaffRegisterDAO stfdao=new StaffRegisterDAO();
			   	
				String staffID=stfdao.fetchStaffID();
			 //  	System.out.println("staff id  in Login Servlet: "+staffID);
			   	
			    
			   	session.setAttribute("staffID_att", staffID);
			    
			}
			else if(objto.getUsertype().equals("teacher"))
			{
				StaffTO sto=new StaffTO();
				StaffRegisterDAO sdb=new StaffRegisterDAO();
				sdb.fetchStaffAttributes(user,sto);
				
				session.setAttribute("staffatt",sto);
				session.setMaxInactiveInterval(600);
			
				response.getWriter().print("2");
			}
			
			else if(objto.getUsertype().equals("hod"))
			{
				StaffTO sto=new StaffTO();
				StaffRegisterDAO sdb=new StaffRegisterDAO();
				sdb.fetchStaffAttributes(user,sto);
				
				System.out.println("Staff type : "+sto.getDesignation());
				session.setAttribute("staffatt",sto);
				session.setMaxInactiveInterval(600);
				response.getWriter().print("3");
				
			}
			
			else if(objto.getUsertype().equals("librarian"))
			{
				StaffTO sto=new StaffTO();
				StaffRegisterDAO sdb=new StaffRegisterDAO();
				sdb.fetchStaffAttributes(user,sto);
				
				session.setAttribute("nonteachingstaffatt",sto);
				session.setMaxInactiveInterval(600);
				
				response.getWriter().print("4");
				
			}
			
			else if(objto.getUsertype().equals("warden"))
			{
				StaffTO sto=new StaffTO();
				StaffRegisterDAO sdb=new StaffRegisterDAO();
				sdb.fetchStaffAttributes(user,sto);
				
				session.setAttribute("nonteachingstaffatt",sto);
				session.setMaxInactiveInterval(600);
				
				response.getWriter().print("5");
				
			}
			
			else if(objto.getUsertype().equals("accountant"))
			{
				StaffTO sto=new StaffTO();
				StaffRegisterDAO sdb=new StaffRegisterDAO();
				sdb.fetchStaffAttributes(user,sto);
				
				session.setAttribute("nonteachingstaffatt",sto);
				session.setMaxInactiveInterval(600);
				
				response.getWriter().print("6");
					
			}
				
			else if(objto.getUsertype().equals("student"))
			{
				StudentTO sto=new StudentTO();
				StudentRegisterDB sdb=new StudentRegisterDB();
				sdb.fetchStudentAttributes(user,sto);
				
				
				session.setAttribute("useratt",sto);
				session.setMaxInactiveInterval(600);
			
				response.getWriter().print("7");
		}
			else if(objto.getUsertype().equals("transportofficer"))
			{
				StaffTO sto=new StaffTO();
				StaffRegisterDAO sdb=new StaffRegisterDAO();
				sdb.fetchStaffAttributes(user,sto);
				
				session.setAttribute("nonteachingstaffatt",sto);
				session.setMaxInactiveInterval(600);
				
				response.getWriter().print("8");
					
			}
		else
		{
			response.getWriter().print("0");
		
		}
	}
	}
	}
