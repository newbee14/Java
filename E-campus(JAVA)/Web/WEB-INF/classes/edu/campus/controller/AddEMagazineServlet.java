package edu.campus.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import edu.campus.model.dao.EMagazineDAO;
import edu.campus.model.to.EMagazineTO;

public class AddEMagazineServlet extends HttpServlet {
	
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	int articleid=0;
	String username=null;
	String name=null;
	String branch=null;
	String title=null;
	String theme=null;
	String completearticle=null;
	
	byte []pic=null;

	
	
	DiskFileItemFactory factory=new DiskFileItemFactory();
	ServletFileUpload upload=new ServletFileUpload(factory);
	
	try
	{
		List<FileItem> items=upload.parseRequest(request);
		for(FileItem item:items)
		{
			if(item.isFormField())
			{
				if(item.getFieldName().equals("articleid"))
					articleid=Integer.parseInt(item.getString());
				
				if(item.getFieldName().equals("username"))
				{	
					username=item.getString();
					
				}

				
				
				if(item.getFieldName().equals("name"))
				{	
					name=item.getString();
					
				}
				
				
				if(item.getFieldName().equals("branch"))
				{	
					branch=item.getString();
					
				}
				
				
				if(item.getFieldName().equals("title"))
				{	
					title=item.getString();
					
				}
				if(item.getFieldName().equals("category"))
				{
					title+=" "+"("+item.getString()+")";
					
				}
				if(item.getFieldName().equals("theme"))
					theme=item.getString();
				if(item.getFieldName().equals("completearticle"))
					completearticle=item.getString();
				
			}
			else if(!item.isFormField())
			{
				pic=item.get();
			}
		}//For Each 
	}//Try
	catch(Exception e)
	{
		System.out.println("Panga In EMagazineServlet "+e);
	}
	
	
	EMagazineTO emto=new EMagazineTO(articleid,username,name,branch,title,pic,theme,completearticle);
	EMagazineDAO emdao=new EMagazineDAO();
	int k=emdao.addEMagazineContent(emto);
	
	if(k>0)
	{
		System.out.println("Inserted Succesfully...");
		request.getRequestDispatcher("StaffHome.jsp").forward(request, response);
	}
	
	else
	{
		System.out.println("failed to insert..");
	}
	
	}

}
