package edu.campus.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.campus.BusinessDelegate.BusinessDelegateUtility;
import edu.campus.model.dao.LoginUserDB;
import edu.campus.model.dao.StudentRegisterDB;
import edu.campus.model.dao.UserStatusDAO;
import edu.campus.model.to.NoDueTO;
import edu.campus.model.to.StudentTO;
import edu.campus.model.to.UserStatusTO;
import edu.campus.model.to.UserTO;

public class StudentRegistrtionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String name=request.getParameter("name");
		String branch=request.getParameter("branch");
		int batch=Integer.parseInt(request.getParameter("batch"));
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		long mobilenumber=Long.parseLong(request.getParameter("mobilenumber"));
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String usertype="student";
		
		
		
		Date dob=null;
		String dateofbirth=request.getParameter("dob");
		
		DateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		try{
			dob=sdf.parse(dateofbirth);
		
		}
		catch(ParseException e){
			System.out.print("parse exception while dob"+e);
		}
		
		Calendar c=Calendar.getInstance();
		c.add(Calendar.YEAR, -18);
		Date eligdate=new Date(c.getTime().getTime());
		System.out.print(" : "+eligdate+" "+dob.getTime()+" "+eligdate.getTime());
		if(dob.getTime()<eligdate.getTime())
		{
			
			String encpass=BusinessDelegateUtility.getEncryptedPassword(password);
			UserTO uto=new UserTO(usertype,username,encpass,email);
			StudentTO rto=new StudentTO(username,name,branch,batch,dob,gender,mobilenumber,address);
			NoDueTO ndto=new NoDueTO(username,false,false,false,false);
		
		
		String status="active";
		UserStatusTO usto=new UserStatusTO(username, status);
		UserStatusDAO usdb=new UserStatusDAO();
		
		LoginUserDB ldb=new LoginUserDB();
		StudentRegisterDB srdb=new StudentRegisterDB();
		
		int j=srdb.valuesAddedInNoDueViaStudent(ndto);
		int k=srdb.regsiterStudent(rto);
		int s=ldb.insertUserInLoginTab(uto);
		int t=usdb.insertStudentStatus(usto);
		if(k>0 && j>0 && s>0 && t>0)
		{
			response.getWriter().print("1");
		}
		else
		{
			response.getWriter().print("0");
		}
	}
	
	else if(dob.getTime()>eligdate.getTime())
	{	System.out.println("DOB not correct");
		response.getWriter().print("3");
	}
}
}