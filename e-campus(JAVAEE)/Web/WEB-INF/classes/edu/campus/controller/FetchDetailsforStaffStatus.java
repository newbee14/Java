package edu.campus.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.campus.model.dao.StaffRegisterDAO;
import edu.campus.model.to.StaffTO;

public class FetchDetailsforStaffStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String staffid=request.getParameter("username");
		StaffTO sto=new StaffTO(staffid);
	    StaffRegisterDAO sdao=new StaffRegisterDAO();
		
	    sdao.fetchStaffAttributes(staffid, sto);
		System.out.println("Faculty Name : "+sto.getFacultyname());
		if(sto!=null)
		{				
			request.setAttribute("StaffStatusAtt", sto);
			
			request.getRequestDispatcher("DisplayStaffStatus.jsp").forward(request,response);
		}
	}

}
