package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CitiesDAO {
public String getCities(String state)
{
	
String city="<select name='city'>";

String url="jdbc:mysql://localhost:3306/hrmgr_db";
String user="root";
String pass="root";

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,user,pass);
	PreparedStatement pstmt=con.prepareStatement("select city from statecity where state='"+state+"'");
	ResultSet rst=pstmt.executeQuery();
	while(rst.next())
	{
		String c=rst.getString(1);
		city = city + "<option value='" + c +"'>"+c+"</option>";
	}
		city=city+"</select>";
	
	
}
catch(Exception e)
{
	
}
return city;


}
}
