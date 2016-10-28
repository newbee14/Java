package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.InterviewDAO;
import model.TO.InterviewTO;

public class ManageInterviewServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("jobcode");
		String date=request.getParameter("date");
		String interviewer=request.getParameter("interviewer");
		String venue=request.getParameter("venue");
		String time=request.getParameter("time");
		String writen=request.getParameter("writen");
		String technical=request.getParameter("technical");
		String hr=request.getParameter("hr");
	
	 InterviewTO objectTo =new InterviewTO(name,date,interviewer,venue,time,writen,technical,hr);
	 
	 InterviewDAO object=new InterviewDAO();
	int result= object.manageInterview(objectTo);
		PrintWriter pw=response.getWriter();
		pw.println(result);
	}

}
