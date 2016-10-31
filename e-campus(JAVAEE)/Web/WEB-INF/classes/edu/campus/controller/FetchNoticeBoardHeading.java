package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.to.StudentTO;

public class FetchNoticeBoardHeading extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public FetchNoticeBoardHeading() {
        super();
   
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session=request.getSession(false);
		String branch=null;
	if(session!=null)
	{
		StudentTO uto=(StudentTO)session.getAttribute("useratt");
		branch=uto.getBranch().toUpperCase()+" DEPARTMENT NOTICE BOARD..";
	}
	System.out.print("in servlet "+branch);
		response.getWriter().print(branch);
	
	
	}

}
