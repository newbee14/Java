package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ChangePasswordDAO2 {

	public int newPassword(String newpassword,String id)
	{
		int result=0;
		String url="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		int flag=0;
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection(url,user,pass);
		PreparedStatement pstmt = con.prepareStatement("update usertab set password=? where username=?");
		pstmt.setString(1,newpassword);
		pstmt.setString(2,id);
		result=pstmt.executeUpdate();
		
		PreparedStatement pstmt2 = con.prepareStatement("update registertab set password=? where email_id=?");
		pstmt2.setString(1,newpassword);
		pstmt2.setString(2,id);
		pstmt2.executeUpdate();
	}
catch(Exception ex)
{
System.out.println(ex);
}

	return result;
	}
	}
