package edu.campus.controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import edu.campus.model.dao.SyllabusDao;
import edu.campus.model.to.SyllabusTO;

public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String description="";
		String content="";
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
					if(item.getFieldName().equals("description"))
					{
						description=item.getString();
					}
					
					if(item.getFieldName().equals("content"))
					{
						content=item.getString();
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
					File f2=new File(root+"/uploads"+"/"+filename);
					dbpath=f2.getAbsolutePath();
					System.out.println("dbpath : "+dbpath);
					item.write(new File(dbpath));
					
				}
			}
		}
		catch(Exception e){}
		ArrayList<SyllabusTO> al=new ArrayList<SyllabusTO>();
		SyllabusTO sto=new SyllabusTO(description, filename,content);
		SyllabusDao sdo=new SyllabusDao();
		int k=sdo.saveSyllabus(sto);
		
		if(k>0)
		{
			request.getRequestDispatcher("StaffHome.jsp").forward(request, response);
		}
		
		
		
		
	}
}
