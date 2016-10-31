package edu.campus.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import edu.campus.factory.ConnectionPool;
import edu.campus.model.to.DonorTO;

public class DonorDAO {
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt=null;
	ResultSet rst=null;
	DonorTO dto=null;
	ArrayList<DonorTO> al=null;
	int k;
	
	public int registerDonor(DonorTO obj)
	{
		
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="insert into donor_tab values(?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1,obj.getDonorid());
			pstmt.setString(2,obj.getName());
			pstmt.setString(3,obj.getDesignation());
			pstmt.setInt(4,obj.getAge());
			pstmt.setString(5,obj.getGender());
			pstmt.setString(6,obj.getBloodgroup());
			pstmt.setLong(7,obj.getMobilenumber());
			pstmt.setString(8,obj.getDiseases());
			
			k=pstmt.executeUpdate();
			if(k>0)
			{
				System.out.println("Records inserted Succesfully...");
			}
			else
			{
				System.out.println("Insertion Failed");
			}
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while inserting in donor_tab "+e);
			
		}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return k;
	}	

	public ArrayList<DonorTO> viewDonorsList(String bloodgroup)
	{
		al=new ArrayList<DonorTO>();
		
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select * from donor_tab where bloodgroup=?";
			pstmt=con.prepareStatement(query);
			System.out.println("blood group : "+bloodgroup);
			pstmt.setString(1,bloodgroup);
			rst=pstmt.executeQuery();
			while(rst.next())
			{
			  dto=new DonorTO(rst.getInt(1),rst.getString(2),rst.getString(3),rst.getInt(4),rst.getString(5),rst.getString(6),rst.getLong(7),rst.getString(8));
			  al.add(dto);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while inserting in donor_tab "+e);
			
		}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		System.out.println("donor list in DAO  : "+al);
		return al;
	}
	
	public int autoIncrementDonorID()
	{
		int donorid=0;
		try
		{
			
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select donorid from donor_tab";
			pstmt=con.prepareStatement(query);
			rst=pstmt.executeQuery();
			if(rst.last())
			{
				
				donorid=rst.getInt(1)+1;
				System.out.println("donorid= "+donorid);
			}
			else
			{
				donorid++;
			}
		}
		catch(Exception e)
		{
			System.out.println("SQL ERROR WHILE DONOR_ID: "+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		return donorid;
	
	
	}


}