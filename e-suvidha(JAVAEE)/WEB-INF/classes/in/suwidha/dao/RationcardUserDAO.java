package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.BuspassUserTO;
import in.suwidha.to.RationcardUserTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RationcardUserDAO 
{
	public int fetchID()
	{
		int id=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select cardno from rationcardtab");
			
			ResultSet rst=pstmt.executeQuery();
			if(rst.last())
				id=rst.getInt(1)+1;
			else
				id=1001;
		}
		catch(Exception e)
		{
			System.out.println("Sql panga in id fetching"+e);
		}
		finally
		{
			Connection con=dbc.get_DBConnection();
			dbc.freeDBConnection(con);
		}
		return id;
	}
	public boolean registerUsers(RationcardUserTO u)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into rationcardtab values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1,u.getName());
			pstmt.setString(2,u.getFathername());
			pstmt.setString(3,u.getDoorno());
			pstmt.setString(4,u.getCity());
			pstmt.setString(5,u.getMandal());
			pstmt.setString(6,u.getDistrict());
			pstmt.setInt(7,u.getPincode());
			pstmt.setInt(8,u.getRno());
			pstmt.setString(9,u.getName1());
			pstmt.setString(10,u.getNationality1());
			pstmt.setInt(11,u.getAge1());
			pstmt.setString(12, u.getFname1());
			pstmt.setString(13, u.getRelation1());
			pstmt.setString(14, u.getName2());
			pstmt.setString(15, u.getNationality2());
			pstmt.setInt(16, u.getAge2());
			pstmt.setString(17, u.getFname2());
			pstmt.setString(18, u.getRelation2());
			pstmt.setString(19, u.getName3());
			pstmt.setString(20, u.getNationality3());
			pstmt.setInt(21, u.getAge3());
			pstmt.setString(22, u.getFname3());
			pstmt.setString(23, u.getRelation3());
			pstmt.setString(24,u.getEmail());
			int i=pstmt.executeUpdate();
			if(i==1)
			{
				t=true;
			}
			else
			{
				t=false;
			}
		}
		catch(Exception e)
		{
			System.out.println("Sql panga"+e);
		}
		finally
		{
			Connection con=dbc.get_DBConnection();
			dbc.freeDBConnection(con);
		}
		return t;
		
		
	}
}
