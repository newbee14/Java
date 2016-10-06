package edu.campus.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.campus.model.dao.BusDAO;
import edu.campus.model.to.BusTO;


public class BusServlet extends HttpServlet 
{
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String routeno=request.getParameter("routeno");
		String busno=request.getParameter("busno");
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		String drivername=request.getParameter("drivername");
		Long drivercontactno=Long.parseLong(request.getParameter("drivercontactno"));
		String conductorname=request.getParameter("conductorname");
		Long conductorcontactno=Long.parseLong(request.getParameter("conductorcontactno"));
		int seats=Integer.parseInt(request.getParameter("seats"));
		
		BusDAO bt=new BusDAO();
		BusTO bs=new BusTO(routeno,busno,from,to,drivername,drivercontactno,conductorname,conductorcontactno,seats);
		int k=bt.addBus(bs);
		if(k>0)
		{
			response.sendRedirect("TransportOfficerHome.jsp");
		}
	}
}
