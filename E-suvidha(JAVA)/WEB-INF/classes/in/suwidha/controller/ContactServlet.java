package in.suwidha.controller;

import in.suwidha.model.mail.email.SendMail;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ContactServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name1=request.getParameter("name");
		
		String email1=request.getParameter("email");
		
		String subject1=request.getParameter("subject");
		
		String message1=request.getParameter("message");
		
		System.out.println("SendMail Servlet : "+name1+" "+email1+" "+subject1+" "+message1);
		
		int k=SendMail.sendEmail(name1, email1, subject1, message1);
		
		PrintWriter out=response.getWriter();
		
		if(k==1)
			out.println("1");
		else
			out.println("0");
		
	}

}
