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

public class SearchBusDestination extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("in search bus servlet");
		String destination=request.getParameter("destination");
		System.out.println(destination);
		ArrayList<BusTO> al=new ArrayList<BusTO>();
		BusDAO dbobj=new BusDAO();
		al=dbobj.viewBusByDestination(destination);
		System.out.println("destination"+al);
		if(!al.isEmpty())
		{
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


