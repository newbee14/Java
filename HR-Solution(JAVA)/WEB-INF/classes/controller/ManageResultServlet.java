package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.InterviewDAO;
import model.TO.InterviewTO;

public class ManageResultServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name=request.getParameter("name");
	String username=request.getParameter("username");

	String jobcode=request.getParameter("jobcode");
	String writentestmarks=request.getParameter("writentest");
	String interview_marks=request.getParameter("interview_marks");
	String status=request.getParameter("status");
	
	System.out.println(name+" "+username+" "+jobcode+" "+writentestmarks+" " +interview_marks+ " " +status);
	InterviewTO object = new InterviewTO(name,username,jobcode,writentestmarks,interview_marks,status);
	InterviewDAO daoObject = new InterviewDAO();
	int result=daoObject.addResult(object);
	PrintWriter pw = response.getWriter();
	if(result==0)
	{
	pw.println("Result not Added");		
	}
	else
	{
		pw.println("Result Added");
	}
	}

}
