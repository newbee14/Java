package edu.campus.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.BusDAO;
import edu.campus.model.to.BusTO;


public class SearchBusServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("servlet1");
		String routeno=request.getParameter("routeno");
		ArrayList<BusTO> al=new ArrayList<BusTO>();
		BusDAO dbobj=new BusDAO();
		al=dbobj.viewBusByRouteNo(routeno);
		for(int i=0;i<al.size();i++)
		{
			System.out.println(al.get(i));
		}
		System.out.println("RouteNo: "+al);
		if(!al.isEmpty())
		{
			System.out.println(" in if empty "+al);
			HttpSession session=request.getSession();
			session.setAttribute("routelistatt", al);
			response.getWriter().print("1");
		}
		else
		{
			response.getWriter().print("0");
		}
		
	}
}


