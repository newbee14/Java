package in.suwidha.controller;

import in.suwidha.dao.LoginUserDAO;
import in.suwidha.model.buisnessdelegate.Utility;
import in.suwidha.to.LoginUserTO;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id=request.getParameter("id");
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
		if(id.equals("logout"))
		{
			session.invalidate();
			response.sendRedirect("index.jsp");
		}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String u=request.getParameter("user");
		int id=Integer.parseInt(request.getParameter("userid"));
		String ps=request.getParameter("pass");
		String p=Utility.getEncryptPassword(ps);
		
		HttpSession session=request.getSession();
		// session.setMaxInactiveInterval(15);               //to set 15 secs bt not requ here
		session.setAttribute("usernameatt",u);
		session.setAttribute("useridatt",id);
		session.setAttribute("userpassatt",p);
		LoginUserTO uto=new LoginUserTO(u,id,p);
		LoginUserDAO ud=new LoginUserDAO();
		boolean b=ud.loginUser(uto);
		
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

}
