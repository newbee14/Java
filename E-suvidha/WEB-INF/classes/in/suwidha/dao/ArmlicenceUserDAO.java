package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.ArmlicenceUserTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ArmlicenceUserDAO 
{
	public int fetchID()
	{
		int id=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select licence_no from armlicencetab");
			
			ResultSet rst=pstmt.executeQuery();
			if(rst.last())
				id=rst.getInt(1)+1;
			else
				id=100000001;
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
	public boolean registerUsers(ArmlicenceUserTO u)
	{
		System.out.println("DAO");
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into armlicencetab values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,u.getName());
			pstmt.setString(2,u.getFathername());
			pstmt.setString(3,u.getPlace());
			pstmt.setString(4,u.getNationality());
			pstmt.setString(5,u.getAddress());
			pstmt.setString(6,u.getPolice());
			pstmt.setLong(7,u.getMobile());
			pstmt.setString(8,u.getEmail());
			pstmt.setString(9,u.getOccupation());
			pstmt.setInt(10,u.getLicenceno());
			pstmt.setString(11,u.getRadio1());
			pstmt.setString(12,u.getRadio2());
			pstmt.setString(13,u.getRadio3());
			pstmt.setString(14,u.getRadio4());
			pstmt.setString(15,u.getRadio5());
			pstmt.setString(16,u.getRadio6());
			pstmt.setString(17,u.getRadio7());
			pstmt.setString(18,u.getDetail());
			pstmt.setString(19,u.getType());
			pstmt.setString(20,u.getNeed());
			pstmt.setString(21,u.getClaim());
			
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
