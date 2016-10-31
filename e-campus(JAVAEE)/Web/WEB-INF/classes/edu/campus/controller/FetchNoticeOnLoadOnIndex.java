package edu.campus.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.campus.model.dao.NoticeDAO;
import edu.campus.model.to.NoticeTO;

public class FetchNoticeOnLoadOnIndex extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title=null;
		NoticeDAO ndao=new NoticeDAO();
		ArrayList<NoticeTO> al=new ArrayList<NoticeTO>();
		al=ndao.fetchNotices();
		if(!al.isEmpty())
		{
		//	title=al.get(0).getTitle();
			//System.out.println(title);
			//response.getWriter().print(title);
			for(int i=0;i<al.size();i++)
			{
			System.out.println(al.get(i).getTitle());
			response.getWriter().print(al.get(i).getTitle()+"/");
			
			}
		}
			
	}

}
