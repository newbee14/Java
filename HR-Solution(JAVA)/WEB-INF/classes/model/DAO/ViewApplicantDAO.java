package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.TO.ViewApplicantTO;

public class ViewApplicantDAO {

	public ArrayList<ViewApplicantTO> viewApplicant() {
		ArrayList<ViewApplicantTO> al=new ArrayList<ViewApplicantTO>();
		String url="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement pstmt=con.prepareStatement("select * from professionaltab");
			ResultSet rst=pstmt.executeQuery();
			while(rst.next())
			{
				al.add(new ViewApplicantTO(rst.getString(1),rst.getInt(2),rst.getString(3),rst.getInt(4),rst.getString(5),rst.getInt(6),rst.getString(7),rst.getInt(8),rst.getString(9),rst.getString(10),rst.getString(11)));
			}
		}
			catch(Exception e)
			{
			System.out.println("Sql problem in viewApplicationDao : "+e);	
			}
			
		return al;
	}

	
}
