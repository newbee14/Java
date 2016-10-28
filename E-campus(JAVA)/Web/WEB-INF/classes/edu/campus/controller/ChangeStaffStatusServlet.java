package edu.campus.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.campus.model.dao.UserStatusDAO;
import edu.campus.model.to.UserStatusTO;

public class ChangeStaffStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String status=request.getParameter("status");
		System.out.print("username : "+username+"status : "+status);
		UserStatusTO sto=new UserStatusTO(username,status);
		UserStatusDAO udb=new UserStatusDAO();
		int k=udb.updateStaffStatus(sto);
		if(k>0)
		{
			request.getRequestDispatcher("AdminHome.jsp").forward(request, response);
		}
	}
}
