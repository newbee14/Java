package in.suwidha.controller;

import in.suwidha.dao.PanUserDAO;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class PanCardServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PanUserDAO ud=new PanUserDAO();
		int id=ud.fetchID();
		System.out.println("id1="+id);
		request.setAttribute("pidatt",id);
		RequestDispatcher rd=request.getRequestDispatcher("pancard.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	}

}
