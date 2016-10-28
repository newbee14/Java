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
import edu.campus.model.dao.StaffRegisterDAO;
import edu.campus.model.dao.UserStatusDAO;
import edu.campus.model.to.StaffTO;
import edu.campus.model.to.UserStatusTO;
import edu.campus.model.to.UserTO;

public class StaffRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String staffid=request.getParameter("staffid");
		String facultyname=request.getParameter("facultyname");
		String designation=request.getParameter("designation");
		String branch=request.getParameter("branch");
		String qualification=request.getParameter("qualification");
		String gender=request.getParameter("gender");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		long phone=Long.parseLong(request.getParameter("phone"));
		String address=request.getParameter("address");
		String dateofbirth=request.getParameter("dob");
		String dateofjoining=request.getParameter("doj");
		Date eligdoj=null;
		DateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		Date dob=null;
		Date doj=null;
	

		try{
			dob=sdf.parse(dateofbirth);
		
		}
		catch(ParseException e){
			System.out.print("parse exception while dob"+e);
		}
		
		Calendar c=Calendar.getInstance();
		c.add(Calendar.YEAR, -24);
		Date eligdate=new Date(c.getTime().getTime());
		
		if(dob.getTime()<eligdate.getTime())
		{
			
			try{
				doj=sdf.parse(dateofjoining);
			}
			catch(ParseException e){
				System.out.print("parse exception while doj"+e);
			}
			
	/*	Calendar c2=Calendar.getInstance();
		c2.setTime(dob);
		c2.add(Calendar.YEAR, 24);
		eligdoj=new Date(c2.getTime().getTime());
			if(doj.getTime()<eligdoj.getTime())
			{	*/
				String encpass=BusinessDelegateUtility.getEncryptedPassword(password);
				UserTO uto=new UserTO(designation,staffid,encpass,email);	
				StaffTO sto=new StaffTO(staffid,facultyname,designation,branch,qualification,gender,dob,doj,phone,address);
		
	   	String status="active";
		
		UserStatusTO usto=new UserStatusTO(staffid,status);
		UserStatusDAO usdao=new UserStatusDAO();
	   	int s=usdao.insertStaffStatus(usto);
	   	
	   	StaffRegisterDAO stfdao=new StaffRegisterDAO();
		int k=stfdao.registerStaff(sto);
	 	LoginUserDB ldb=new LoginUserDB();
	   	int j=ldb.insertUserInLoginTab(uto);
		
		
		if(k>0 && j>0 && s>0)
			{
			response.getWriter().print("1");
			}
			else
			{
			response.getWriter().print("0");
			}
	/*	}
		else if(doj.getTime()>eligdoj.getTime())
			{
				response.getWriter().print("3");
			}	*/
		}//main if
		
		else if(dob.getTime()>eligdate.getTime())
		{
			response.getWriter().print("2");
		}
	}

}
