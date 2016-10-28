package edu.campus.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.EMagazineDAO;
import edu.campus.model.to.EMagazineTO;

public class FetchEMagazineOnLoad extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EMagazineDAO emdao=new EMagazineDAO();
		ArrayList<EMagazineTO> al=new ArrayList<EMagazineTO>();
		al=emdao.fetchEMagazineContent();
		if(!al.isEmpty())
		{	
			for(int i=0;i<al.size();i++)
			{
			System.out.println(al.get(i).getTitle());
			System.out.println(al.get(i).getTheme());
		//	HttpSession session=request.getSession();
			
			response.getWriter().print(al.get(i).getTitle()+"/"+al.get(i).getTheme()+"/");
			}
		}
		else
		{
			System.out.println("empty");
		}
	}

}
