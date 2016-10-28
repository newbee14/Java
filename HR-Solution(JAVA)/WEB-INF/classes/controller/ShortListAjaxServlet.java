package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO.ShortlistAjaxDAO;

public class ShortListAjaxServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String q =request.getParameter("q");
		String y=request.getParameter("y");
		String d=request.getParameter("d");
		String j=request.getParameter("j");
		String s=request.getParameter("s");
		
	System.out.println(" "+q+" "+y+" "+d+" "+j+" "+s);

	ShortlistAjaxDAO object = new ShortlistAjaxDAO();
	String result[]=object.checkValues(q,y,d,j,s);

	if(result[1]!=null)
	{
	String users[]=result[1].split(",");
	int shotlist_result=object.insertShortlistApplicant(users);
	if(shotlist_result>0)
	System.out.println("Added to shortlist table");
	else
	System.out.println("Not Added to shortlist table");
		
	}
	
	PrintWriter pw = response.getWriter();
	pw.print(result[0]);
	System.out.println(result);
	}

}
