package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.RegisterDAO;
import model.TO.RegisterTO;
public class RegisterServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Welcome resgistre servlet.....");
		String fullname=request.getParameter("fullname");
		String email_id=request.getParameter("email");
		String password=request.getParameter("password");
		
		
		RegisterTO ro=new RegisterTO();
		
		ro.setFullname(fullname);
		ro.setEmail_id(email_id);
		ro.setPassword(password);
		
		
		RegisterDAO rdo=new RegisterDAO();
		int result=rdo.registerUser(ro);
		
		PrintWriter pw=response.getWriter();
		System.out.println("result variable in servlet : "+result);
		if(result>0)
			   pw.println("1");
		else
			   pw.println("0");
		}

}
