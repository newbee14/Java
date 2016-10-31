package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmailValidateDAO {
	int result=0;
	public int emailValidate(String email) 
		{
	
	String path="jdbc:mysql://localhost:3306/hrmgr_db";
	String user="root";
	String pass="root";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");

		Connection con=DriverManager.getConnection(path,user,pass);
		System.out.println("email in DAO : "+email);
		PreparedStatement pstmt=con.prepareStatement("select * from usertab where username='"+email+"'");
		ResultSet r=pstmt.executeQuery();
		if(r.next())
		{
		 result=1;
		}
	}
		catch(Exception e)
		{
			System.out.println("Exception : "+e);
		}
	System.out.println("result in DAO : "+result);
	return result;
	}

	
}
