
package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.AadharUserTO;
import in.suwidha.to.DrivingTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DrivingDAO
{
	public int fetchID()
	{
		int id=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select lic_no from drivingtab");
			
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
	public boolean registerUsers(DrivingTO u)
	{
		System.out.println("Driving DAO ");
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into drivingtab values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1,u.getLic_no());
			pstmt.setDate(2,new java.sql.Date((u.getLic_dt()).getTime()));
			
			pstmt.setString(3,u.getLic_la());
			pstmt.setString(4,u.getMotor1());
			pstmt.setString(5,u.getSpother());
			pstmt.setString(6,u.getNm());
			pstmt.setString(7,u.getSd());
			pstmt.setString(8,u.getGn());
			pstmt.setString(9,u.getDoorno());
			pstmt.setString(10,u.getDoorno_temp());
			pstmt.setString(11,u.getVillage());
			pstmt.setString(12,u.getVillage_temp());
			pstmt.setString(13,u.getMandal());
			pstmt.setString(14,u.getMandal_temp());
			
			pstmt.setString(15,u.getDistrict());
			pstmt.setString(16,u.getDistrict_temp());
			pstmt.setInt(17,u.getPin());
			pstmt.setInt(18,u.getPin_temp());
			
			pstmt.setDate(19,new java.sql.Date((u.getDateob()).getTime()));
			pstmt.setString(20,u.getEdu());
			pstmt.setString(21,u.getIdmarks1());
			pstmt.setString(22,u.getIdmarks2());
			pstmt.setString(23,u.getBg());
			pstmt.setString(24,u.getEndorsed());
			pstmt.setString(25,u.getDis_reason());
			pstmt.setString(26,u.getCer_no());
			pstmt.setDate(27,new java.sql.Date((u.getCer_dt()).getTime()));
			pstmt.setString(28,u.getIssuedby());
			
			pstmt.setString(29,u.getR1());
			pstmt.setString(30,u.getR2());
			pstmt.setString(31,u.getR3());
			pstmt.setString(32,u.getR4());
			pstmt.setString(33,u.getR5());
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
