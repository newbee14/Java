package edu.campus.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import edu.campus.model.dao.DonorDAO;
import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.to.DonorTO;
import edu.campus.model.to.StudentTO;

public class ViewStudentByBranchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String branch=request.getParameter("branch");
				int batch=Integer.parseInt(request.getParameter("batch"));
				ArrayList<StudentTO> al=new ArrayList<StudentTO>();
				StudentRegisterDB dbobj=new StudentRegisterDB();
				al=dbobj.viewStudentByBranch(branch,batch);
				System.out.println("Branch : "+al);
				if(!al.isEmpty())
				{
					System.out.println("Branch : "+al);
					HttpSession session=request.getSession();
					session.setAttribute("branchStudAtt", al);
					session.setAttribute("branch", branch);
					session.setAttribute("batch", batch);
					request.getRequestDispatcher("ShowStudentByBranch.jsp").forward(request, response);
					
				}
				
				
	}

}
