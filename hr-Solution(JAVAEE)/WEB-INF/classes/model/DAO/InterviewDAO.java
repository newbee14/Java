package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.TO.InterviewTO;
// Manage Interview by Manager//
public class InterviewDAO {

	int result;
	String path="jdbc:mysql://localhost:3306/hrmgr_db";
	String user="root";
	String pass="root";
	Connection con;
	PreparedStatement pstmt;
	
	public int manageInterview( InterviewTO objectTo) {
	int writen=1;
	int technical=1;
	int hr=1;
	if(objectTo.getWriten()==null)
	{
	writen=0;
	}
   if(objectTo.getTechnical()==null)
   {
    technical=0;
   }
   if(objectTo.getHr()==null)
   {
    hr=0;
   }
	
	try
		{
	 	Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(path,user,pass);
			pstmt=con.prepareStatement("insert into interview_schedule values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1,objectTo.getJobcode());
			pstmt.setString(2,objectTo.getDate());
			pstmt.setString(3,objectTo.getInterviewer());
			pstmt.setString(4,objectTo.getVenue());
			pstmt.setString(5,objectTo.getTime());
			pstmt.setInt(6,writen);
			pstmt.setInt(7,technical);
			pstmt.setInt(8,hr);
			result=pstmt.executeUpdate();

			
		}
		catch(Exception e)
		{
			System.out.println("Exception : "+e);
		}
		return result;
	}

	public String showInterviewTable()
	{
		
	    String table="<table border='1' cellpadding='1' cellspacing='1' bordercolor='gray'> <tr><td>JobCode</td><td>Date</td><td>Interviewer</td><td>Venue</td><td>Timing</td><td>Writen Test</td><td>Technical Interview</td><td>Hr Interview</td></tr>";
		try
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(path,user,pass);
				pstmt=con.prepareStatement("select * from interview_schedule");
				ResultSet rst=pstmt.executeQuery();
				while(rst.next())
				{
					table=table+"<tr><td>"+rst.getString(1)+"</td><td>"+rst.getString(2)+"</td><td>"+rst.getString(3)+"</td><td>"+rst.getString(4)+"</td><td>"+rst.getString(5)+"</td><td>"+rst.getInt(6)+"</td><td>"+rst.getInt(7)+"</td><td>"+rst.getInt(8)+"</td></tr>";
				}
				table=table+"</table>";
			}
		catch(Exception ex)
		{
			
		}
		return table;
		}
	public int addResult(InterviewTO object)
	{
		int result=0;
		
		try
		{
	 	Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(path,user,pass);
			pstmt=con.prepareStatement("insert into interview_result values(?,?,?,?,?,?)");
			pstmt.setString(1, object.getName());
			pstmt.setString(2,object.getUsername());
			pstmt.setString(3,object.getJobcode());
			pstmt.setString(4,object.getWritentestmarks());
			pstmt.setString(5,object.getInterview_marks());
			pstmt.setString(6,object.getStatus());
			result=pstmt.executeUpdate();

			
		}
		catch(Exception ex)
		{
			System.out.println("Add Result " +ex);
		}
		return result;
	}

	
}
