package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class YesServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Welcome in yes Servlet....");
			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession userssession=request.getSession(false);
		if(userssession!=null)
		{
			String users[]=(String[])userssession.getAttribute("shortusers");
			
			for(String i:users)
				System.out.println(i);
			RequestDispatcher rd = request.getRequestDispatcher("Hr.jsp");
			rd.forward(request,response);
		}

	}

}
