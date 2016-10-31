package edu.campus.controller;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FileDownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String filename=request.getParameter("filename");		
		String dbpath=getServletContext().getRealPath("")+File.separator+"uploads"+File.separator+filename;
		
		File file= new File(dbpath);
		System.out.print(dbpath);
		int length=0;
		ServletOutputStream outStream =response.getOutputStream();
		ServletContext context=getServletConfig().getServletContext();
		String mimetype=context.getMimeType(dbpath);
		
		if(mimetype==null){
			mimetype="application/octet-stream";
		}
		
		response.setContentType(mimetype);
		response.setContentLength((int)file.length());
		
		response.setHeader("Content-Disposition","attachment;filename=\""+filename+"\"");
		
		byte[] byteBuffer= new byte[4096];
		
		DataInputStream in= new DataInputStream(new FileInputStream(file));
		 while((in!=null)&& ((length=in.read(byteBuffer)) !=-1))
		 {
			 outStream.write(byteBuffer, 0, length);
		
		 }
		 
		 in.close();
		 outStream.close();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
}
