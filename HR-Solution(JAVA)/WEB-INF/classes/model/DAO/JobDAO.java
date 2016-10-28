package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.TO.JobTO;

public class JobDAO 
{
	ArrayList<JobTO> jt=new ArrayList<JobTO>();
	String url="jdbc:mysql://localhost:3306/hrmgr_db";
	String user="root";
	String pass="root";
	int result=0;
	public ArrayList<JobTO> getJobsDetail()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement pstmt=con.prepareStatement("select * from jobs_tab");
			ResultSet rst=pstmt.executeQuery();
			while(rst.next())
			{
				jt.add(new JobTO(rst.getInt(1),rst.getString(2),rst.getString(3),rst.getString(4),rst.getString(5),rst.getString(6)));
			}
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga in  job DAO : "+e);
		}
		return jt;
	}
	public int addAppliedJob(String jobcode, String userid,String date) 
	{
		String path="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		Boolean status=false;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(path,user,pass);
			PreparedStatement pstmt=con.prepareStatement("insert into applied_jobtab values(?,?,?,?)");
			pstmt.setString(1,userid);
			pstmt.setString(2,jobcode);
			pstmt.setString(3,date);
			pstmt.setBoolean(4, status);
			
			result=pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Exception in jobcodeDAO : "+e);
		}
		return result;
	}
	public boolean isJobCodeExisting(String userid, String jobcode) 
	{
		Boolean result=null;
		String path="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement pstmt=con.prepareStatement("select * from applied_jobtab where username=? and jobcode=?");
			pstmt.setString(1, userid);
			pstmt.setString(2,jobcode);
			ResultSet rst=pstmt.executeQuery();
			if(rst.next())
			{
				result=false;
			}
			else
				result=true;
		}
		catch(Exception e)
		{
		System.out.println("Is jobcode available error : "+e);	
		}
		return result;
	}
}
