package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO.SkillDAO;
public class SkillServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String domain=request.getParameter("domain");
		System.out.println(domain);

		SkillDAO object = new SkillDAO();
		String result=object.getSkill(domain);
		PrintWriter pw = response.getWriter();
		pw.println(result);
		System.out.println(result);

	}

}
