package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.to.StudentTO;


public class DuesClearanceByStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String rollnumber=request.getParameter("rollnumber");
			System.out.println("rno in dues clearance servlet : "+rollnumber);
		
			StudentTO sto=new StudentTO(rollnumber);
		
			StudentRegisterDB sdb=new StudentRegisterDB();
			sdb.fetchStudentAttributes(rollnumber, sto);
	
			if(sto!=null)
			{				
				request.setAttribute("rollnumatt", sto);
				request.getRequestDispatcher("DisplayDuesByStaff.jsp").forward(request, response);
			}
		//	else
			//	response.getWriter().print("1");			
	}
}


