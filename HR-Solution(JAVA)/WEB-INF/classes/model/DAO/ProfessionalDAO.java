package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import model.TO.ProfessionalTO;

public class ProfessionalDAO {
	public int addProfessional(ProfessionalTO pobject2,String userid)
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
			
			PreparedStatement pstmt=con.prepareStatement("insert into professionaltab values(?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,pobject2.getGraduation());
			pstmt.setInt(2,pobject2.getG_marks());
			pstmt.setString(3,pobject2.getG_university());
			pstmt.setInt(4,pobject2.getG_yof());
			pstmt.setString(5,pobject2.getPostgraduation());
			pstmt.setInt(6,pobject2.getPg_marks());
			pstmt.setString(7,pobject2.getPg_university());
			pstmt.setInt(8,pobject2.getPg_yof());
			pstmt.setString(9,pobject2.getDomain());
			pstmt.setString(10,pobject2.getSkill());
			pstmt.setString(11,userid);
			
			result=pstmt.executeUpdate();
			
		
	}
catch(Exception e)
{
System.out.println("professionalDAO exception"+e);
}
return result;
}

	 

	
}
