package edu.campus.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.campus.model.dao.EMagazineDAO;

public class ArticleIdServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	System.out.println("in id servlet");
	EMagazineDAO emdao=new EMagazineDAO();
	int articleid=emdao.autoIncrementArticleID();
	
	System.out.println(articleid);
	
	
	response.getWriter().print(articleid);
		
		
	}

}
