package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.TO.LoginTO;



public class LoginDAO {

	public int checkUserValidation(LoginTO lo)
	{
		String url="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		int result=0;
		Connection con;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pass);
			
			PreparedStatement pstmt=con.prepareStatement("select * from usertab where username=? and password=? and usertype=?");
			pstmt.setString(1,lo.getUsername());
			pstmt.setString(2,lo.getPassword());
			pstmt.setString(3,lo.getUsertype());
			ResultSet rst=pstmt.executeQuery();
			
			
			if(rst.next())
				result=1;
				
		}
		catch(Exception e)
		{
			System.out.println("error connectivity : "+e);
		}
				
		return result;
		
	}
}


