package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.SyllabusDao;
import edu.campus.model.to.SeatingPlanTO;
import edu.campus.model.to.StudentTO;

public class FetchSeatingArrangementDetailsServlet extends HttpServlet 
{

    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String sem=request.getParameter("sem");
		String branch=null;
		String filename="";
		HttpSession session1=request.getSession(false);
		if(session1!=null)
		{
			StudentTO sto=(StudentTO)session1.getAttribute("useratt");
			branch=sto.getBranch().toLowerCase();
		}
		filename=branch+sem;
		System.out.println("Filename :"+filename);
		
		
		SyllabusDao sdo=new SyllabusDao();
		SeatingPlanTO sto=sdo.downloadSeatingPlan(branch,sem);
		
		if(sto!=null)
			System.out.println("sto is not null");
		else
			System.out.println("sto is null");

		
		request.setAttribute("seatingplanfileatt", sto);
		request.getRequestDispatcher("SeatingArrangementDownloadServlet").forward(request, response);
			
	}

	}


