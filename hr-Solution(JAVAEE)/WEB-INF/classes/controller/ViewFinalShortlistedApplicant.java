package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.ShortlistAjaxDAO;

public class ViewFinalShortlistedApplicant extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ShortlistAjaxDAO object = new ShortlistAjaxDAO();
		String result=object.viewShortlistedApplicant();
		PrintWriter pw = response.getWriter();
		System.out.println(result);
		pw.println(result);
		
	}

}
