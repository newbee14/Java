package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.campus.BusinessDelegate.BusinessDelegateUtility;
import edu.campus.model.dao.LoginUserDB;

import edu.campus.model.to.UserTO;

public class ForgetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{String usertype,emailid, randompass,username;
	 
	 usertype=request.getParameter("usertype");
	 randompass=BusinessDelegateUtility.randomAlphaNumericPassword(8);
	 username=request.getParameter("username");
	 emailid=request.getParameter("emailID");
	
	String encpass=BusinessDelegateUtility.getEncryptedPassword(randompass);
	UserTO sto=new UserTO(usertype,username,encpass,emailid);
	LoginUserDB ldb=new LoginUserDB();
	
	int flag=ldb.userForgetPassword(sto);
	System.out.println("flag"+flag);
	if(flag>0)
	{
		try{
				BusinessDelegateUtility.mailSentForForgetPassword(emailid, randompass, username);
		}
		catch (Exception e) {
	    	e.printStackTrace();
		}
	}
} 

}