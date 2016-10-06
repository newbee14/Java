package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.AadharUserTO;
import in.suwidha.to.MarriagecertUserTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MarriagecertUserDAO 
{
	public int fetchID()
	{
		int id=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select issueno from marriagecerttab");
			
			ResultSet rst=pstmt.executeQuery();
			if(rst.last())
				id=rst.getInt(1)+1;
			else
				id=1000001;
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
	public boolean registerUsers(MarriagecertUserTO u)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into marriagecerttab values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1,u.getIssueno());
			pstmt.setDate(2,new java.sql.Date((u.getDate()).getTime()));
			pstmt.setString(3,u.getName());
			pstmt.setString(4,u.getFathername());
			pstmt.setString(5,u.getMothername());
			pstmt.setDate(6,new java.sql.Date((u.getDob()).getTime()));
			pstmt.setString(7,u.getNationality());
			pstmt.setString(8,u.getOccupation());
			pstmt.setString(9,u.getResident());
			pstmt.setString(10,u.getBname());
			pstmt.setString(11,u.getBfathername());
			pstmt.setString(12,u.getBmothername());
			pstmt.setDate(13,new java.sql.Date((u.getBdob()).getTime()));
			pstmt.setString(14,u.getBnationality());
			pstmt.setString(15,u.getBoccupation());
			pstmt.setString(16,u.getBresident());
			pstmt.setDate(17,new java.sql.Date((u.getMdate()).getTime()));
			pstmt.setString(18,u.getDoorno());
			pstmt.setString(19,u.getCity());
			pstmt.setString(20,u.getMandal());
			pstmt.setString(21,u.getDistrict());
			pstmt.setInt(22,u.getPincode());
			pstmt.setString(23,u.getEmail());
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
