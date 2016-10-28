package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.TO.RegisterTO;

public class RegisterDAO {
	public String getUser(String email)
	{	
		String name=null;
		String path="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");

			Connection con=DriverManager.getConnection(path,user,pass);

			PreparedStatement pstmt=con.prepareStatement("select fullname from registertab where email_id='"+email+"'");
			ResultSet rst=pstmt.executeQuery();
			if(rst.next())
			name=rst.getString(1);
		}
		catch(Exception e)
		{
			System.out.println("Exception : "+e);
		}
		return name;
	}
	public int registerUser(RegisterTO ro)
	{	int result=0;
		String path="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(path,user,pass);
			PreparedStatement pstmt=con.prepareStatement("insert into registertab values(?,?,?)");
			pstmt.setString(1,ro.getFullname());
			pstmt.setString(2,ro.getEmail_id());
			pstmt.setString(3,ro.getPassword());
			pstmt.executeUpdate();
			
			String type="applicant";
			PreparedStatement pstmt1=con.prepareStatement("insert into usertab values(?,?,'"+type+"')");
			pstmt1.setString(1,ro.getEmail_id());
			pstmt1.setString(2,ro.getPassword());
			result=pstmt1.executeUpdate();
		}
			catch(Exception e)
			{
				System.out.println("Exception : "+e);
			}
		return result;
	}
	}