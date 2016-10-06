package in.suwidha.controller;

import in.suwidha.dao.LoginUserDAO;
import in.suwidha.model.buisnessdelegate.Utility;
import in.suwidha.model.mail.email.SendMail;
import in.suwidha.to.LoginUserTO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ChangePwdServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
			int id=Integer.parseInt(request.getParameter("id"));
			String op=request.getParameter("opw");
			
			System.out.println("old pass:"+op);
			
			HttpSession session=request.getSession(false);
			if(session!=null)
			{
			 if(id==1)
			 {
				String pass=session.getAttribute("userpassatt").toString();
				String enpass=Utility.getEncryptPassword(op);
				System.out.print("pass="+pass+"  enapass= "+enpass);
				if(!pass.equals(enpass))
				{
					PrintWriter pw=response.getWriter();
					pw.print("0");
				}
				else
				{
					PrintWriter pw=response.getWriter();
					pw.print("1");
				}	
			  }
			 
			 }
			else
				response.getWriter().println("<html><body><h1>Session Expired.....</h1></body></html>");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Change Password Servlet doPost()......");
		HttpSession session=request.getSession(false);
		
		boolean k;
		if(session!=null)
		{
			int id=Integer.parseInt(request.getParameter("ide"));
			if(id==1)
			{ 
				
				int uid=Integer.parseInt(session.getAttribute("useridatt").toString());
				String name=(String)session.getAttribute("usernameatt");
				String pass=request.getParameter("npw");
				String enpass=Utility.getEncryptPassword(pass);
				System.out.println("id="+id+" uid="+uid+" np="+pass+" enpass="+enpass);
				LoginUserTO to=new LoginUserTO(enpass);
				LoginUserDAO ld=new LoginUserDAO();
				String email=ld.getEmail(uid);
				k=ld.updateUserPassword(to,uid);
				PrintWriter out=response.getWriter();
				if(k==true)
				{
					out.println("1");
					int k1=SendMail.passwordChanged(name, email,pass);
					if(k1==1)
						out.println("1");
					else
						out.println("0");
				}
				else
				{	
					out.println("0");
				}
			}
		}
	}

}
