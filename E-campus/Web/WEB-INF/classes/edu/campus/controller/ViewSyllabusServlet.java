package edu.campus.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.SyllabusDao;
import edu.campus.model.to.SyllabusTO;
import edu.campus.model.to.UserTO;

public class ViewSyllabusServlet extends HttpServlet 
{

    public ViewSyllabusServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String usertype=null;
		HttpSession session1=request.getSession(false);
		if(session1!=null)
		{
			UserTO uto=(UserTO)session1.getAttribute("usertypeatt");
			usertype=uto.getUsertype();
		}
		ArrayList<SyllabusTO> al=new ArrayList<SyllabusTO>();
		SyllabusDao sdo=new SyllabusDao();
		al=sdo.viewSyllabus();
		
		if(!al.isEmpty())
		{
			HttpSession session=request.getSession();
			session.setAttribute("Syllabusatt", al);
			if(usertype.equals("student"))
			{
			request.getRequestDispatcher("ViewContent.jsp").forward(request, response);
			}
			else if(usertype.equals("teacher"))
			{
				request.getRequestDispatcher("ViewContentTeacher.jsp").forward(request, response);	
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
	}

}
