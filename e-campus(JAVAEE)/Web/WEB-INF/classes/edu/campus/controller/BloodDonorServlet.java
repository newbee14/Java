package edu.campus.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.DonorDAO;
import edu.campus.model.to.DonorTO;
import edu.campus.model.to.UserTO;

public class BloodDonorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//	System.out.println("Servlet1");
		String usertype=null;
		int donorid=Integer.parseInt(request.getParameter("donorid"));
		String name=request.getParameter("name");
		String designation=request.getParameter("designation");
		//System.out.println(name+designation);
		int age=Integer.parseInt(request.getParameter("age"));
	//	System.out.println(age);
		String gender=request.getParameter("gender");
		String bloodgroup=request.getParameter("bloodgroup");
		long mobilenumber=Long.parseLong(request.getParameter("mobilenumber"));
		String diseases=request.getParameter("diseases");
	//	System.out.println("Servlet2");
		DonorDAO daoobj = new DonorDAO();
		DonorTO obj=new DonorTO(donorid,name,designation,age,gender,bloodgroup,mobilenumber,diseases);
		daoobj.registerDonor(obj);
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			UserTO userobj=(UserTO)session.getAttribute("usertypeatt");
			usertype=userobj.getUsertype();
		}
		if(usertype.equalsIgnoreCase("Teacher") || usertype.equalsIgnoreCase("hod"))
		{
			response.getWriter().print("1");
		}
		else if(usertype.equalsIgnoreCase("TransportOfficer"))
		{
			response.getWriter().print("2");
		}
		else if(usertype.equalsIgnoreCase("warden") || usertype.equalsIgnoreCase("librarian") || usertype.equalsIgnoreCase("accountant"))
		{
			
			response.getWriter().print("3");
		}
		else if(usertype.equalsIgnoreCase("student"))
		{
			response.getWriter().print("4");
		}
	}

}
