package controller;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO.JobDAO;

public class ApplyJobServlet extends HttpServlet 
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	System.out.println("ApplyJobServlet LAUNCHED......");
	String jobcode=request.getParameter("jobcode");
	System.out.println("jobcode : "+jobcode);
	String userid=null;
	Calendar c=Calendar.getInstance();
	String date=c.get(Calendar.DATE)+"/"+(c.get(Calendar.MONTH)+1)+"/"+c.get(Calendar.YEAR);
		
	HttpSession session=request.getSession(false);
	if(session!=null)
	{
		userid=(String)session.getAttribute("userid");
	}
	//here check in applied job tab for job code for current userid in session id
	JobDAO object=new JobDAO();
	boolean whatcomes=object.isJobCodeExisting(userid,jobcode);
	if(whatcomes)
	{
		int result=object.addAppliedJob(jobcode,userid,date);
		if(result==0)
		{
			System.out.println("Job not Applied");
		}
		else
		{
			System.out.println("Job Applied");
		}
		
	}
	else
	{
	System.out.println("Job already applied");
	}
	RequestDispatcher rd = request.getRequestDispatcher("Applicant.jsp");
	rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
