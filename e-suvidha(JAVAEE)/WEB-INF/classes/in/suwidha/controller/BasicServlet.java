package in.suwidha.controller;

import in.suwidha.dao.BasicDAO;
import in.suwidha.to.News;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BasicServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		BasicDAO bd=new BasicDAO();
		ArrayList<News> nobj=bd.getAllNews();
		request.setAttribute("NEWSatt", nobj);
		
		RequestDispatcher rd=request.getRequestDispatcher("news.jsp");
		rd.forward(request, response);
		
	}

}
