package edu.campus.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.BusDAO;
import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.to.NoDueTO;
import edu.campus.model.to.StudentTO;

public class BasicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		RequestDispatcher rd=null;
		if(id.equals("ForgetPassword"))
		{
			rd=request.getRequestDispatcher("ForgetPassword.jsp");
		}
		else if(id.equals("NoDues"))
		{
			
			StudentTO sto=new StudentTO();
			HttpSession session=request.getSession();
			sto=(StudentTO)session.getAttribute("useratt");
			String rollnum=sto.getUsername();
			NoDueTO nto=new NoDueTO();
			
			StudentRegisterDB sdb=new StudentRegisterDB();
			sdb.fetchNoDues(rollnum,nto);
			
			
			session.setAttribute("noduesatt",nto);					
			nto=(NoDueTO)session.getAttribute("noduesatt");
		Boolean teacher, accountant, warden, librarian;
			
			teacher=nto.isTeacher();
			warden=nto.isWarden();
			librarian=nto.isLibrarian();
			accountant=nto.isAccountant();
			System.out.print(teacher+" "+warden);
			
			session.setAttribute("teacheratt", teacher);	
			session.setAttribute("wardenatt", warden);	
			session.setAttribute("librarianatt", librarian);	
			session.setAttribute("accountantatt", accountant);
			
			rd=request.getRequestDispatcher("NoDues.jsp");
		}
		
		rd.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		System.out.println("search Bus : "+id);
		if(id.equals("routes"))
		{
			System.out.println("search Bus in Routes if : "+id);
			BusDAO bd=new BusDAO();	
			ArrayList<String>routes=bd.getRoutesOnly();
			request.setAttribute("routesatt",routes);
			request.getRequestDispatcher("ShowRoutes.jsp").forward(request, response);
		}
		else if(id.equals("destinations"))
		{
			System.out.println("search Bus  in Destinations if : "+id);
			BusDAO bdest=new BusDAO();	
			ArrayList<String>destinations=bdest.getDestinationsOnly();
			request.setAttribute("destinationsatt",destinations);
			System.out.println("Destination in Basicservlet:"+destinations);
			request.getRequestDispatcher("ShowDestination.jsp").forward(request,response);
		}
		
	}
}
