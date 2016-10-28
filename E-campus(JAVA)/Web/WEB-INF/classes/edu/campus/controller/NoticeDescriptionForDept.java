package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.NoticeDAO;
import edu.campus.model.to.StaffTO;
import edu.campus.model.to.StudentTO;
import edu.campus.model.to.UserTO;

public class NoticeDescriptionForDept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public NoticeDescriptionForDept() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String description=null;
		String branch=null;
		String usertype=null;
		int noticeid=Integer.parseInt(request.getParameter("noticeid"));
		System.out.println(noticeid);
		
		NoticeDAO ndao=new NoticeDAO();
		HttpSession session2=request.getSession(false);
		if(session2!=null)
		{
			UserTO uto=(UserTO)session2.getAttribute("usertypeatt");
			usertype=uto.getUsertype();
			System.out.println("usertype is "+usertype);
			if(usertype.equals("student"))
			{
				StudentTO sto1=(StudentTO)session2.getAttribute("useratt");
				branch=sto1.getBranch();
				System.out.print("branch is "+branch);
				description=ndao.fetchNoticeDescriptionForDept(noticeid,branch);	
				
			}
			else if(usertype.equals("teacher") || usertype.equals("hod"))
			{
			StaffTO sto=(StaffTO)session2.getAttribute("staffatt");
			branch=sto.getBranch();
			System.out.print("branch is "+branch);
			
			description=ndao.fetchNoticeDescriptionForDept(noticeid,branch);
			
			}
			
			
			
		}
		
		
		System.out.print("description is "+description);
		HttpSession session=request.getSession();
		session.setAttribute("descriptiondeptatt",description);
		if(usertype.equals("student"))
		{
			response.getWriter().print("1");
		}
		else if(usertype.equals("teacher")||usertype.equals("hod"))
		{
			response.getWriter().print("2");
		}

	}

}
