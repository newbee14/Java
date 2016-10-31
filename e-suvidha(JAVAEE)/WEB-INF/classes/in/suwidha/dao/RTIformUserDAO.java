package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.RTIformUserTO;
import in.suwidha.to.VotercardUserTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RTIformUserDAO
{
	public int fetchID()
	{
		int id=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select id_no from rtitab");
			
			ResultSet rst=pstmt.executeQuery();
			if(rst.last())
				id=rst.getInt(1)+1;
			else
				id=1000000001;
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
	public boolean registerUsers(RTIformUserTO u)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into rtitab values(?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1,u.getIdno());
			pstmt.setString(2,u.getName());
			pstmt.setString(3,u.getFamily());
			pstmt.setString(4,u.getResident());
			pstmt.setString(5,u.getInfo());
			pstmt.setString(6,u.getReceipt());
			pstmt.setDate(7,new java.sql.Date((u.getDate()).getTime()));
			pstmt.setLong(8,u.getMobile());
			pstmt.setString(9,u.getEmail());
			pstmt.setString(10,u.getFaxaddress());
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
