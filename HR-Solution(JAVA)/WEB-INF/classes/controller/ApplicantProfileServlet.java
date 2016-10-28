package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DAO.ProfessionalDAO;
import model.DAO.ProfileDAO;
import model.TO.ProfessionalTO;
import model.TO.ProfileTO;

public class ApplicantProfileServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Applicant profile sevlet....");
		
		String name=request.getParameter("n");
		String dob=request.getParameter("dob");
		String address=request.getParameter("address");
		String mailaddress=request.getParameter("mailaddress");
		String state=request.getParameter("state");
		String city=request.getParameter("city");
		String contactno=request.getParameter("contactno");
		String email=request.getParameter("email");
		System.out.println("name in servlet : "+name);
		System.out.println("dob in servlet : "+dob);
		
		ProfileTO pobject = new ProfileTO();
		pobject.setName(name);
		pobject.setDob(dob);
		pobject.setAddress(address);
		pobject.setMailaddress(mailaddress);
		pobject.setState(state);
		pobject.setCity(city);
		pobject.setContactno(contactno);
		pobject.setEmail(email);
	
		ProfileDAO pdo = new ProfileDAO();
		int result=pdo.addProfile(pobject);
		System.out.println(result);
		PrintWriter pw = response.getWriter();
			
		
		String graduation=request.getParameter("graduation");
		int g_marks=Integer.parseInt(request.getParameter("g_marks"));
		String g_university=request.getParameter("g_university");
		int g_yof=Integer.parseInt(request.getParameter("g_yof"));
		String postgraduation=request.getParameter("postgraduation");
		int pg_marks=Integer.parseInt(request.getParameter("pg_marks"));
		String pg_university=request.getParameter("pg_university");
		int pg_yof=Integer.parseInt(request.getParameter("pg_yof"));
		String domain=request.getParameter("domain");
		String skill=request.getParameter("skill");
		
	
		ProfessionalTO pobject2=new ProfessionalTO();
		pobject2.setGraduation(graduation);
		pobject2.setG_marks(g_marks);
		pobject2.setG_university(g_university);
		pobject2.setG_yof(g_yof);
		pobject2.setPostgraduation(postgraduation);
		pobject2.setPg_marks(pg_marks);
		pobject2.setPg_university(pg_university);
		pobject2.setPg_yof(pg_yof);
		pobject2.setDomain(domain);
		pobject2.setSkill(skill);
		
		String userid=null;
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			userid=(String)session.getAttribute("userid");
		}
				
		
		ProfessionalDAO prodo = new ProfessionalDAO();
		int result2=prodo.addProfessional(pobject2,userid);
		System.out.println(result2);
		PrintWriter pw2 = response.getWriter();
		if(result2==0 && result==0) pw2.println("Error");
		else if(result2==0 && result==1) pw2.println("Error");
		else if(result2==1 && result==0) pw2.println("Error");
		else if(result2==1 && result==1) pw2.println("Edited");

		//if(result==0) pw.println("Error in Persnel Information");
		//else pw.println("Persnel Information Added");

	
	}

}
