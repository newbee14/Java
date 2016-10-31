package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.EmailValidateDAO;

public class EmailValidateServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		EmailValidateDAO object=new EmailValidateDAO();
		int result=	object.emailValidate(email);
		PrintWriter pw=response.getWriter();
		System.out.println("result in servlet : "+result);
		if(result==1)		pw.println("1");
		else pw.println("0");
		
	}

}
