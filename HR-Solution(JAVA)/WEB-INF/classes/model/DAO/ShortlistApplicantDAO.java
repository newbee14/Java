package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.TO.ShortlistApplicantTO;

public class ShortlistApplicantDAO {

	public ArrayList<ShortlistApplicantTO> shortlistApplicant() {
		ArrayList<ShortlistApplicantTO> al = new ArrayList<ShortlistApplicantTO>();
		String url="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement pstmt=con.prepareStatement("select a.username,a.jobcode,a.applied_date,p.graduation,p.g_marks,p.g_yof,p.postgraduation,p.pg_marks,p.pg_yof,p.domain,p.skill from applied_jobtab a,professionaltab p where p.email_id=a.username ");
			ResultSet rst=pstmt.executeQuery();
			
			while(rst.next())
			{
				al.add(new ShortlistApplicantTO(rst.getString(1),rst.getString(2),rst.getString(3),rst.getString(4),rst.getInt(5),rst.getInt(6),rst.getString(7),rst.getInt(8),rst.getInt(9),rst.getString(10),rst.getString(11)));
			}
		}
		catch(Exception e)
		{
			
		}
			return al;
	}

}
