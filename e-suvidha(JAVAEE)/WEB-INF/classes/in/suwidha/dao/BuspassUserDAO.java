package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.AadharUserTO;
import in.suwidha.to.BuspassUserTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BuspassUserDAO 
{
	public int fetchID()
	{
		int id=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select token_no from buspasstab");
			
			ResultSet rst=pstmt.executeQuery();
			if(rst.last())
				id=rst.getInt(1)+1;
			else
				id=10000001;
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
	public boolean registerUsers(BuspassUserTO u)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into buspasstab values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1,u.getType());
			pstmt.setString(2,u.getType1());
			pstmt.setString(3,u.getFirstname());
			pstmt.setString(4,u.getLastname());
			pstmt.setString(5,u.getDoorno());
			pstmt.setString(6,u.getCity());
			pstmt.setString(7,u.getMandal());
			pstmt.setString(8,u.getDistrict());
			pstmt.setInt(9,u.getPincode());
			pstmt.setDate(10,new java.sql.Date((u.getDob()).getTime()));
			pstmt.setString(11,u.getDisability());
			pstmt.setString(12, u.getRadio1());
			pstmt.setString(13, u.getRadio2());
			pstmt.setString(14, u.getRadio3());
			pstmt.setString(15, u.getRadio4());
			pstmt.setString(16, u.getRadio5());
			pstmt.setString(17, u.getRadio6());
			pstmt.setString(18, u.getRadio7());
			pstmt.setString(19, u.getRadio8());
			pstmt.setString(20, u.getRadio9());
			pstmt.setString(21, u.getRadio10());
			pstmt.setString(22, u.getRadio11());
			pstmt.setString(23, u.getRadio12());
			pstmt.setString(24,u.getDoctorname());
			pstmt.setLong(25,u.getMobile());
			pstmt.setString(26,u.getEmail());
			pstmt.setInt(27,u.getTokenno());
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
