package edu.campus.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.to.UserTO;

public class DuesSubmissionByStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean duesval=Boolean.parseBoolean(request.getParameter("duesval"));
		String rollnumber=request.getParameter("rollnumber");
		
		HttpSession session=request.getSession();
		UserTO uto=(UserTO)session.getAttribute("usertypeatt");
		String usertype=uto.getUsertype();
		StudentRegisterDB sdb=new StudentRegisterDB();
		int k=sdb.updateNoDuesByStaff(rollnumber, usertype,duesval);
		
		if(k>0)
		{
			response.getWriter().print("1");
		}
		
		else
		{
			response.getWriter().print("0");
		}
	}

}
