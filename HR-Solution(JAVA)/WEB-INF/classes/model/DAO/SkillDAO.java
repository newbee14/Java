package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SkillDAO {

	public String getSkill(String domain) {
		
		String skill="<select name='skill' onChange='shortlistajax()''>";
		String url="jdbc:mysql://localhost:3306/hrmgr_db";
		String user="root";
		String pass="root";

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,user,pass);
			PreparedStatement pstmt=con.prepareStatement("select skill from domainskill where domain='"+domain+"'");
			ResultSet rst=pstmt.executeQuery();
			skill = skill + "<option value='All'>All</option>";
			while(rst.next())
			{
				String c=rst.getString(1);
				skill = skill + "<option value='" + c +"'>"+c+"</option>";
			}
				skill=skill+"</select>";
			
			
		}
		catch(Exception e)
		{
			
		}
		return skill;
}

}
