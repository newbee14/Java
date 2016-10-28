package edu.campus.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.NoticeDAO;
import edu.campus.model.to.NoticeTO;
import edu.campus.model.to.StaffTO;
import edu.campus.model.to.StudentTO;
import edu.campus.model.to.UserTO;

public class FetchNoticeOnLoadInStudentHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FetchNoticeOnLoadInStudentHome() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title=null;
		String branch=null;
		String branch1=null;
		String usertype=null;
		NoticeDAO ndao=new NoticeDAO();
		ArrayList<NoticeTO> al=new ArrayList<NoticeTO>();
		HttpSession session1=request.getSession(false);
		
		if(session1!=null)
		{
			UserTO uto1=(UserTO)session1.getAttribute("usertypeatt");
			usertype=uto1.getUsertype();
		}
		
		HttpSession session=request.getSession(false);
		
		if(session!=null)
		{
			if(usertype.equals("student"))
			{
			StudentTO uto=(StudentTO)session.getAttribute("useratt");
			branch=uto.getBranch();
			}
			
			else if(usertype.equals("teacher") || usertype.equals("hod"))
			{
				StaffTO uto=(StaffTO)session.getAttribute("staffatt");
				branch=uto.getBranch();
			}
			
		}
		
		
		
		al=ndao.fetchNoticesInStudentHome(branch);
		
		branch=branch.toUpperCase()+" DEPARTMENT NOTICE BOARD..";
		
		System.out.print("in servlet "+branch);
		
		
		if(!al.isEmpty())
		{
		
			for(int i=0;i<al.size();i++)
			{
			System.out.println(al.get(i).getTitle());
			response.getWriter().print(al.get(i).getTitle()+"/");
			
			}
			response.getWriter().print(branch);
		}
	}

}
