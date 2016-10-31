package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ChangePasswordDAO {

	public String checkPassword(String oldpassword, String id) {
		String result=null;
		String url="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		int flag=0;
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection(url,user,pass);
		PreparedStatement pstmt = con.prepareStatement("select password from usertab where username=?");
		pstmt.setString(1,id);
		ResultSet rst=pstmt.executeQuery();
		if(rst.next())
		{
			result=rst.getString(1);
		}
		}
catch(Exception ex)
{
	
}
return result;
	}	
}