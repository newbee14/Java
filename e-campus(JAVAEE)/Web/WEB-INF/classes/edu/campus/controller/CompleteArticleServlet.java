package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.EMagazineDAO;
import edu.campus.model.to.UserTO;

public class CompleteArticleServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String completearticle=null;
		String usertype=null;
		int articleid=Integer.parseInt(request.getParameter("articleid"));
		System.out.println(articleid);
		EMagazineDAO emdao=new EMagazineDAO();
		completearticle=emdao.fetchCompleteArticle(articleid);
		System.out.print("complete article is "+completearticle);
		HttpSession session=request.getSession();
		session.setAttribute("completearticleatt",completearticle);
		//request.getRequestDispatcher("EMagazineDescription.jsp?id="+articleid).forward(request, response);
		HttpSession session1=request.getSession(false);
		if(session1!=null)
		{
			UserTO uto=(UserTO)session1.getAttribute("usertypeatt");
			usertype=uto.getUsertype();
			
		}
		System.out.print("usertype is "+usertype);
		if(usertype.equals("student"))
		response.getWriter().print("1");
		
		else if(usertype.equals("teacher")||usertype.equals("hod"))
			response.getWriter().print("2");
		
		else if(usertype.equals("transportofficer"))
			response.getWriter().print("3");
		
		else if(usertype.equals("librarian")||usertype.equals("warden")||usertype.equals("accountant"))
			response.getWriter().print("4");
	
		
		
	}

}