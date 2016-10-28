package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.ShortlistApplicantDAO;
import model.TO.ShortlistApplicantTO;

public class ShortlistApplicantServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Welcome in Shortlist Applicant Servlet");
		ShortlistApplicantDAO object=new ShortlistApplicantDAO();
		ArrayList<ShortlistApplicantTO> al =object.shortlistApplicant(); 
		
		request.setAttribute("Shortlist_Applicant",al);
		RequestDispatcher rd = request.getRequestDispatcher("ShortlistApplicant.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
