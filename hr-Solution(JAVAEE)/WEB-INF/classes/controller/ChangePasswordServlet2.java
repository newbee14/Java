package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO.ChangePasswordDAO2;

public class ChangePasswordServlet2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newpassword = request.getParameter("newpassword");
		String id=null;
		HttpSession session = request.getSession(false);
		if(session!=null)
		{
			id=(String)session.getAttribute("userid");
			System.out.println("Session is of "+id);
		}
		ChangePasswordDAO2 object = new ChangePasswordDAO2();
		int result=object.newPassword(newpassword,id);
		if(result==0)
		{
			System.out.println("Not Updated");
			}
		else
		{
			System.out.println("Updated");
		
		}	
		
	}

}
