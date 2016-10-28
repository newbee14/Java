package edu.campus.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.DonorDAO;
import edu.campus.model.to.DonorTO;

public class BloodDonorsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("servlet1");
		String bloodgroup=request.getParameter("bloodgroup");
		ArrayList<DonorTO> al=new ArrayList<DonorTO>();
		DonorDAO dbobj=new DonorDAO();
		al=dbobj.viewDonorsList(bloodgroup);
		System.out.println("Donors : "+al);
		if(!al.isEmpty())
		{
			System.out.println("Donors : "+al);
			HttpSession session=request.getSession();
			session.setAttribute("donorslistatt", al);
			response.getWriter().print("1");
		}
		else
		{
			response.getWriter().print("0");
		}
		
	}
}
