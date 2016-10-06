package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.AadharUserTO;
import in.suwidha.to.VotercardUserTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class VotercardUserDAO 
{
	public int fetchID()
	{
		int id=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select voterno from votertab");
			
			ResultSet rst=pstmt.executeQuery();
			if(rst.last())
				id=rst.getInt(1)+1;
			else
				id=10001;
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
	public boolean registerUsers(VotercardUserTO u)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into votertab values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,u.getName());
			pstmt.setString(2,u.getSurname());
			pstmt.setString(3,u.getFname());
			pstmt.setString(4,u.getMname());
			pstmt.setDate(5,new java.sql.Date((u.getDob()).getTime()));
			pstmt.setString(6,u.getGender());
			pstmt.setString(7,u.getPlace());
			pstmt.setString(8,u.getDoorno());
			pstmt.setString(9,u.getStreet());
			pstmt.setString(10,u.getPostoffice());
			pstmt.setString(11,u.getTehsil());
			pstmt.setInt(12,u.getPincode());
			pstmt.setString(13,u.getCity());
			pstmt.setString(14,u.getDistrict());
			pstmt.setInt(15,u.getVoterno());
			pstmt.setString(16,u.getName1());
			pstmt.setString(17,u.getRelation1());
			pstmt.setString(18,u.getPart1());
			pstmt.setString(19,u.getCardno1());
			pstmt.setLong(20,u.getMobile1());
			pstmt.setString(21,u.getName2());
			pstmt.setString(22,u.getRelation2());
			pstmt.setString(23,u.getPart2());
			pstmt.setString(24,u.getCardno2());
			pstmt.setLong(25,u.getMobile2());
			pstmt.setDate(26,new java.sql.Date((u.getDate()).getTime()));
			
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