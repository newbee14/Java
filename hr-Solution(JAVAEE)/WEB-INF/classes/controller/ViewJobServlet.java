package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.JobDAO;
import model.TO.JobTO;
public class ViewJobServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Welcome in View Job Servlet....");
		JobDAO jd=new JobDAO();
		ArrayList<JobTO> jt=jd.getJobsDetail();
		for(JobTO i:jt)
			System.out.println(i.getJobtitle());
		request.setAttribute("jobs_att",jt);
		RequestDispatcher rd=request.getRequestDispatcher("ApplyJob.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	}

}
