package edu.campus.controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import edu.campus.model.dao.SyllabusDao;
import edu.campus.model.to.SeatingPlanTO;
import edu.campus.model.to.SyllabusTO;

public class SeatingArrangementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String course="";
		String sem="",extn="";
		String filename="", filepath="", fieldname="", dbpath="", root="";
		DiskFileItemFactory factory=new DiskFileItemFactory();
		ServletFileUpload upload=new ServletFileUpload(factory);
		try
		{
			List<FileItem> items=upload.parseRequest(request);
			for(FileItem item:items)
			{
				if(item.isFormField())
				{
					if(item.getFieldName().equals("course"))
					{
						course=item.getString();
					}
					
					if(item.getFieldName().equals("sem"))
					{
						sem=item.getString();
					}
				}
				else if(!item.isFormField())
				{
					filename=item.getName();
					root=getServletContext().getRealPath("/");
					
					File f=new File(root+"/uploads");
					if(!f.exists())
					{
						f.mkdir();
					}
					System.out.println("Selected OLD File name  "+filename);
					extn=filename.substring(filename.indexOf("."),filename.length());
					File oldfile=new File(filename.substring(filename.length()).concat(course+sem+extn));
					
					//String nf=new String(course+sem);
					//File newfile=new File(nf);
					
					//System.out.println("new file name 1: "+nf);
					
					//oldfile.renameTo(newfile);
					filename=oldfile.getName();
					System.out.println("New file name : "+filename);
					
					File f2=new File(root+"/uploads"+"/"+filename);
					dbpath=f2.getAbsolutePath();
					System.out.println("dbpath : "+dbpath);
					item.write(new File(dbpath));
					
				}
			}
		}
		catch(Exception e){}
		ArrayList<SyllabusTO> al=new ArrayList<SyllabusTO>();
		SeatingPlanTO sto=new SeatingPlanTO(course, sem,filename);
		SyllabusDao sdo=new SyllabusDao();
		int k=sdo.saveSeatingPlan(sto);
		
		if(k>0)
		{
			request.getRequestDispatcher("AdminHome.jsp").forward(request, response);
		}
		
		
		
		
	}
}
