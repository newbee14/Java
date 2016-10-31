package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ShortlistAjaxDAO {
	int result=0;
	String url="jdbc:mysql://localhost:3306/hrmgr_db";
	String user="root";
	String pass="root";
	PreparedStatement pstmt=null;
	Connection con;
	public String[] checkValues(String q, String y, String d, String j, String s) 
	{
		String table[]=new String[2];
		
		table[0]="<table border='1' cellpadding='1' cellspacing='1' bordercolor='gray'> <tr><td>Username</td><td>Jobcode</td><td>Applied Date</td><td>Graduation</td><td>Marks</td><td>Year of passing</td><td>Post Graduation</td><td>Marks</td><td>Year of passing</td><td>Domain</td><td>Skill</td></tr>";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			
		if(q.equals("All")&&y.equals("All")&&d.equals("All")&&j.equals("All") && s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username ");
			
		}
		else if (q.equals("All")==false&&y.equals("All")&&d.equals("All")&&j.equals("All") && s.equals("All"))
		
		{
		pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and p.graduation='"+q+"'");

		}
	  else if (q.equals("All")==false && y.equals("All")==false &&d.equals("All")&&j.equals("All")&&s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and p.graduation='"+q+"'and p.g_yof='"+y+"'");
		}
	  else if (q.equals("All")==false && y.equals("All")==false &&d.equals("All")==false&&j.equals("All")&&s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and p.graduation='"+q+"'and p.g_yof='"+y+"'and p.domain='"+d+"'");
		}
	  else if (q.equals("All")==false && y.equals("All")==false &&d.equals("All")==false&&j.equals("All")==false&&s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and p.graduation='"+q+"'and p.g_yof='"+y+"'and p.domain='"+d+"'and a.jobcode='"+j+"' ");
		}
	  else if (q.equals("All")==false && y.equals("All")==false &&d.equals("All")==false&&j.equals("All")==false&&s.equals("All")==false)
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and p.graduation='"+q+"'and p.g_yof='"+y+"'and p.domain='"+d+"'and a.jobcode='"+j+"'and p.skill='"+s+"' ");
		}
	  else if (q.equals("All")&& y.equals("All")==false &&d.equals("All")&&j.equals("All")&&s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and  p.g_yof='"+y+"'");
		}
	  else if (q.equals("All")&& y.equals("All")==false &&d.equals("All")&&j.equals("All")==false&&s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and p.g_yof='"+y+"'and a.jobcode='"+j+"'");
		}
	  else if (q.equals("All") && y.equals("All")==false &&d.equals("All")==false&&j.equals("All")==false&&s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and  p.g_yof='"+y+"'and p.domain='"+d+"'and a.jobcode='"+j+"'");
		}
	  else if (q.equals("All")==false && y.equals("All")==false &&d.equals("All")==false&&j.equals("All")==false&&s.equals("All")==false)
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and p.graduation='"+q+"'and p.g_yof='"+y+"'and p.domain='"+d+"'and a.jobcode='"+j+"'and p.skill='"+s+"' ");
		}
	  else if (q.equals("All")&& y.equals("All")==false &&d.equals("All")==false&&j.equals("All")==false&&s.equals("All")==false)
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and p.g_yof='"+y+"'and p.domain='"+d+"'and a.jobcode='"+j+"'and p.skill='"+s+"' ");
		}
	  else if (q.equals("All")&& y.equals("All")&&d.equals("All")&&j.equals("All")==false&&s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and a.jobcode='"+j+"'");
				
		}
	  else if (q.equals("All")&& y.equals("All")&&d.equals("All")==false&&j.equals("All")==false&&s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and p.domain='"+d+"'and a.jobcode='"+j+"'");
		}
	  else if (q.equals("All") && y.equals("All") &&d.equals("All")==false&&j.equals("All")==false&&s.equals("All")==false)
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and  p.domain='"+d+"'and a.jobcode='"+j+"'and p.skill='"+s+"' ");
		}
	  else if (q.equals("All") && y.equals("All") &&d.equals("All")==false&&j.equals("All")&&s.equals("All"))
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and  p.domain='"+d+"'");
		}
	  else if (q.equals("All") && y.equals("All") &&d.equals("All")==false&&j.equals("All")&&s.equals("All")==false)
		{
			pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username and  p.domain='"+d+"'and p.skill='"+s+"' ");
		}
	
		ResultSet rst=pstmt.executeQuery();
		 table[1]="no";
		while(rst.next())
		{
			String userid=rst.getString(1);
			table[0]=table[0]+"<tr><td>"+userid+"</td><td>"+rst.getString(2)+"</td><td>"+rst.getString(3)+"</td><td>"+rst.getString(4)+"</td><td>"+rst.getString(5)+"</td><td>"+rst.getString(6)+"</td><td>"+rst.getString(7)+"</td><td>"+rst.getString(8)+"</td><td>"+rst.getString(9)+"</td><td>"+rst.getString(10)+"</td><td>"+rst.getString(11)+"</td><tr>";
			table[1]=table[1]+","+userid;
			
		}
		table[0]=table[0]+"</table>";
		}
		catch(Exception e)
		{
			System.out.println("Shortlist Ajax" + e);
		}
	//	sendUsersToMgr(users);
		return table;
		
	}
	
	
	public int insertShortlistApplicant(String users[]) {
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
		
		for(int i=0;i<users.length;i++)
		{
			pstmt=con.prepareStatement("select pp.name, a.username,pp.contactno,p.graduation,p.domain,a.jobcode from applied_jobtab a,professionaltab p,personaltab pp where p.email_id=a.username and p.email_id=pp.email_d and pp.email_d=a.username and a.username=? ");
			pstmt.setString(1,users[i]);
			ResultSet rst=pstmt.executeQuery();
			PreparedStatement pstmt2=con.prepareStatement("insert into shortlisttab values(?,?,?,?,?,?) ");
			
			if(rst.next())
			{
			pstmt2.setString(1,rst.getString(1));
			pstmt2.setString(2,rst.getString(2));
			pstmt2.setLong(3,rst.getLong(3));
			pstmt2.setString(4,rst.getString(4));
			pstmt2.setString(5,rst.getString(5));
			pstmt2.setString(6,rst.getString(6));
		result=pstmt2.executeUpdate();
			}
		}
		
		}
		catch(Exception ex)
		{
		System.out.println("Ajax shortlist table error " +ex);	
		}
		return result;
	}

	public String viewShortlistedApplicant()
	{
		
    String table="<table border='1' cellpadding='1' cellspacing='1' bordercolor='gray'> <tr><td>Name</td><td>Username</td><td>Contact No</td><td>Graduation</td><td>Domain</td><td>Job Code</td></tr>";
	try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			pstmt=con.prepareStatement("select * from shortlisttab ");
			ResultSet rst=pstmt.executeQuery();
			while(rst.next())
			{
				table=table+"<tr><td>"+rst.getString(1)+"</td><td>"+rst.getString(2)+"</td><td>"+rst.getLong(3)+"</td><td>"+rst.getString(4)+"</td><td>"+rst.getString(5)+"</td><td>"+rst.getString(6)+"</td></tr>";
			}
			table=table+"</table>";
		}
	catch(Exception ex)
	{
		
	}
	return table;
	}

	
}
