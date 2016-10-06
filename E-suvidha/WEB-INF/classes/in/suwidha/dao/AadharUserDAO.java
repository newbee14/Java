package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.AadharUserTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AadharUserDAO
{
	public int fetchID()
	{
		int id=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select enumber from aadhartab");
			
			ResultSet rst=pstmt.executeQuery();
			if(rst.last())
				id=rst.getInt(1)+1;
			else
				id=101;
		}
		
		catch(Exception e)
		{
			System.out.println("Sql panga in id fetching"+e);
		}
		finally
		{
			System.out.println("id="+id);
			Connection con=dbc.get_DBConnection();
			dbc.freeDBConnection(con);
		}
		return id;
	}
	public boolean registerUsers(AadharUserTO u)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into aadhartab values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setDate(1,new java.sql.Date((u.getDate()).getTime()));
			pstmt.setInt(2,u.getEnm());
			pstmt.setString(3,u.getName());
			pstmt.setString(4,u.getFname());
			pstmt.setString(5,u.getMname());
			pstmt.setDate(6,new java.sql.Date((u.getDate()).getTime()));
			pstmt.setString(7,u.getGender());
			pstmt.setString(8,u.getDoorno());
			pstmt.setString(9,u.getCity());
			pstmt.setString(10,u.getMandal());
			pstmt.setString(11,u.getDistrict());
			pstmt.setInt(12,u.getPincode());
			pstmt.setLong(13,u.getMobile());
			pstmt.setString(14,u.getEmail());
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
