package edu.campus.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.StaffRegisterDAO;
import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.to.StaffTO;
import edu.campus.model.to.StudentTO;


public class ViewStafftByDesigServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String designation=request.getParameter("designation");
		StaffTO sto=new StaffTO();
		ArrayList<StaffTO> al=new ArrayList<StaffTO>();
		StaffRegisterDAO dbobj=new StaffRegisterDAO();
		al=dbobj.viewStaffByDesignation(designation);
		//System.out.println("Branch : "+al);
		if(!al.isEmpty())
		{
		//	System.out.println("Branch : "+al);
			HttpSession session=request.getSession();
			session.setAttribute("DesigStaffAtt", al);
			session.setAttribute("designation", designation);
			
			request.getRequestDispatcher("ShowStaffByDesignation.jsp").forward(request, response);
			
		}
		
	}

}
