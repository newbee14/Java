package edu.campus.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;

import edu.campus.model.dao.UserStatusDAO;
import edu.campus.model.to.UserStatusTO;

/**
 * Servlet implementation class ChangeStudentStatus
 */
public class ChangeStudentStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String status=request.getParameter("status");
		System.out.print("username : "+username+"status : "+status);
		UserStatusTO sto=new UserStatusTO(username,status);
		UserStatusDAO udb=new UserStatusDAO();
		int k=udb.updateStudentStatus(sto);
		if(k>0)
		{
			
			request.getRequestDispatcher("StaffHome.jsp").forward(request,response);
		}
}
}
