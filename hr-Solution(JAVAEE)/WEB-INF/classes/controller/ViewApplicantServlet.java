package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.ViewApplicantDAO;
import model.TO.ViewApplicantTO;
public class ViewApplicantServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Welcome in View Applicant Servlet");
		ViewApplicantDAO object=new ViewApplicantDAO();
		ArrayList<ViewApplicantTO> al=object.viewApplicant();
		
		request.setAttribute("View_Applicant",al);
		RequestDispatcher rd = request.getRequestDispatcher("ViewApplicant.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
