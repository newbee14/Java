package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO.ChangePasswordDAO;

public class ChangePasswordServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=null;
		String result=null;
		String oldpassword=request.getParameter("oldpassword");
		HttpSession session = request.getSession(false);
		if(session!=null)
		{
			id=(String)session.getAttribute("userid");
			System.out.println("Session is of "+id);
		}
		
		ChangePasswordDAO object = new ChangePasswordDAO();
	     result=object.checkPassword(oldpassword,id);
		PrintWriter pw =response.getWriter();
System.out.println("We get result as "+result);
			if(result.equals(oldpassword))
		{
		pw.println("Correct Password");
		}
		else 	pw.println("Wrong Password");
		
				
	}

}
