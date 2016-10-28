package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import model.TO.ProfileTO;

public class ProfileDAO {

	public int addProfile(ProfileTO pobject) {
		
		String url="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";
		int result=0;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement pstmt=con.prepareStatement("insert into personaltab values(?,?,?,?,?,?,?,?)");
			System.out.println("Name is DAo : "+pobject.getName());
			pstmt.setString(1,pobject.getName());
			pstmt.setString(2,pobject.getDob());
			pstmt.setString(3,pobject.getAddress());
			pstmt.setString(4,pobject.getState());
			pstmt.setString(5,pobject.getCity());
			pstmt.setString(6,pobject.getContactno());
			pstmt.setString(7,pobject.getEmail());
			pstmt.setString(8,pobject.getMailaddress());
			
			
			result=pstmt.executeUpdate();
			
	}
catch(Exception e)
{
	System.out.println("Profile DAO Panga : "+e);
}
return result;
}
}
