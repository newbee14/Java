package edu.campus.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import edu.campus.factory.ConnectionPool;
import edu.campus.model.to.BusTO;

public class BusDAO {
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt=null;
	ResultSet rst=null;
	ArrayList<BusTO> al=null;
	BusTO bto=null;
	int k;
	
public ArrayList<String> getRoutesOnly()
	{
		ArrayList<String>routes=new ArrayList<String>();
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select * from bus_tab";
			pstmt=con.prepareStatement(query);
			rst=pstmt.executeQuery();
			while(rst.next())
			{
				routes.add(rst.getString(1));
			}
		}
		catch(Exception e){e.printStackTrace();}
		System.out.println("Routes in BUSDAO : "+routes);
		return routes;
	}	
public ArrayList<String> getDestinationsOnly()
	{
		ArrayList<String>destinations=new ArrayList<String>();
		try 
		{
			
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select * from bus_tab";
			pstmt=con.prepareStatement(query);
			rst=pstmt.executeQuery();
			while(rst.next())
			{
				destinations.add(rst.getString(4));
			}
		}
		catch(Exception e){e.printStackTrace();}
		System.out.println("Destination in BUSDAO:"+destinations);
		return destinations;
	}
	
	public int addBus(BusTO obj)
	{
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="insert into bus_tab values(?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,obj.getRouteno());
			pstmt.setString(2,obj.getBusno());
			pstmt.setString(3,obj.getFrom());
			pstmt.setString(4,obj.getTo());
			pstmt.setString(5,obj.getDrivername());
			pstmt.setLong(6,obj.getDrivercontactno());
			pstmt.setString(7,obj.getConductorname());
			pstmt.setLong(8,obj.getConductorcontactno());
			pstmt.setInt(9,obj.getSeats());
			
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
			System.out.println("Sql Panga while inserting in bus_tab "+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		return k;
	}	
	
	public ArrayList<BusTO> viewBusByRouteNo(String routeno)
	{ 
		al=new ArrayList<BusTO>();
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select * from bus_tab where routeno=?";
			System.out.println("in query");
			pstmt=con.prepareStatement(query);
			System.out.println("route no : "+routeno);
			pstmt.setString(1,routeno);
			rst=pstmt.executeQuery();
			while(rst.next())
			{
			  bto=new BusTO(rst.getString(1),rst.getString(2),rst.getString(3),rst.getString(4),rst.getString(5),rst.getLong(6),rst.getString(7),rst.getLong(8),rst.getInt(9));
			  al.add(bto);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while fetching fromn bus_tab "+e);
			
		}
		finally
		{
			pool.freeConnection(con);
    	}
		System.out.println("buses in DAO  : "+al);
		return al;
	}
	public ArrayList<BusTO> viewBusByDestination(String destination)
	{ 
		al=new ArrayList<BusTO>();
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select * from bus_tab where to_dest=?";
			System.out.println("in query");
			pstmt=con.prepareStatement(query);
			System.out.println("destination: "+destination);
			pstmt.setString(1,destination);
			rst=pstmt.executeQuery();
			while(rst.next())
			{
			  bto=new BusTO(rst.getString(1),rst.getString(2),rst.getString(3),rst.getString(4),rst.getString(5),rst.getLong(6),rst.getString(7),rst.getLong(8),rst.getInt(9));
			  al.add(bto);
			}
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while fetching from bus_tab "+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		System.out.println("buses in DAO  : "+al);
		return al;
	}
}
