package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.DonorDAO;

public class DonorIDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		DonorDAO obj=new DonorDAO();
		int donorid=obj.autoIncrementDonorID();
		
	//	HttpSession session=request.getSession();
	//	session.setMaxInactiveInterval(1000);
		
	//	session.setAttribute("donoridatt",donorid);
		
		response.getWriter().print(donorid);
	}

}
