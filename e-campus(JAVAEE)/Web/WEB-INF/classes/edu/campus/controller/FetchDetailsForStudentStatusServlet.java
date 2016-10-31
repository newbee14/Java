package edu.campus.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.to.StudentTO;

public class FetchDetailsForStudentStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		StudentTO sto=new StudentTO(username);
		StudentRegisterDB sdb=new StudentRegisterDB();
		sdb.fetchStudentAttributes(username, sto);
		
		
		if(sto!=null)
		{				
			request.setAttribute("rollnumatt", sto);
			request.getRequestDispatcher("DisplayStudentStatus.jsp").forward(request, response);
		}
		
		
	}

}
