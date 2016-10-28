package edu.campus.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import edu.campus.BusinessDelegate.BusinessDelegateUtility;
import edu.campus.factory.ConnectionPool;
import edu.campus.model.to.StaffTO;


public class StaffRegisterDAO
	{
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt=null, pstmt1=null, pstmt2=null;
	ResultSet rst=null;
	String query,query1,query2;
	int k,j;
	
	public String fetchStaffID()
	{
		pool=new ConnectionPool();
		con=pool.getConnection();
		String Staffid=null;
		try
		{
			query="select username from staff_tab";
			pstmt=con.prepareStatement(query);
			rst=pstmt.executeQuery();
			if(rst.last())
			{
					String genID=rst.getString(1);
					Staffid=BusinessDelegateUtility.fetchID(genID);
					
			}
			else
			{
				Staffid="ECamp/101";
				
			}
					
		}catch(Exception e){ System.out.print("sql error while fetching the staffid"+e);}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return Staffid;
	}
	public int registerStaff(StaffTO obj)
	{
		pool=new ConnectionPool();
		con=pool.getConnection();	
		int k=0;
			try
			{
			query="insert into staff_tab values(?,?,?,?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,obj.getStaffid());
			pstmt.setString(2,obj.getFacultyname());
			pstmt.setString(3,obj.getDesignation());
			pstmt.setString(4,obj.getBranch());
			pstmt.setString(5,obj.getQualification());
			pstmt.setString(6,obj.getGender());
			pstmt.setDate(7,new java.sql.Date(obj.getDob().getTime()));
			pstmt.setDate(8,new java.sql.Date(obj.getDoj().getTime()));
			pstmt.setLong(9,obj.getPhone());
			pstmt.setString(10,obj.getAddress());
			k=pstmt.executeUpdate();
			}
			catch(Exception e){System.out.println("Sql error while registering faculties via admin"+e);}
			
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return k;
		}
	public StaffTO viewStaffDetails(StaffTO staffto)
	{
		Connection con=null;
		ConnectionPool pool=null;
		PreparedStatement pstmt;
		pstmt=null;	
		String query;
	
		StaffTO staffobj=null;
		ResultSet rst=null;
		try 
		{
			System.out.println("DB 1");
			pool=new ConnectionPool();
			con=pool.getConnection();
			query="select * from staff_tab where username=?";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,staffto.getStaffid());
			rst=pstmt.executeQuery();
			if(rst.next())
			{
				staffobj=new StaffTO(rst.getString(1),rst.getString(2),rst.getString(3),rst.getString(4),rst.getString(5),rst.getString(6),rst.getDate(7),rst.getDate(8),rst.getLong(9),rst.getString(10));
				
			}
		}
		catch(Exception e)
		{
			System.out.println("SQL PANGA"+e);
		}
		return staffobj;
	}
	
	public int modifyStaffDetails(StaffTO staffobj){
		Connection con=null;
		ConnectionPool pool=null;
		PreparedStatement pstmt;
		pstmt=null;	
		String query;
		int flag=0;
	
		//StaffTO staffto=null;
		//ResultSet rst=null;
		try 
		{
			System.out.println("DB staffmodify");
			pool=new ConnectionPool();
			con=pool.getConnection();
			query="update staff_tab set name=?,designation=?,branch =?,qualification=?,gender=?,dob=?,doj=?,phone=?,address=?  where username=?";
			pstmt=con.prepareStatement(query);
		
			pstmt.setString(1,staffobj.getFacultyname());
			pstmt.setString(2,staffobj.getDesignation());
			pstmt.setString(3,staffobj.getBranch());
			pstmt.setString(4,staffobj.getQualification());
			pstmt.setString(5,staffobj.getGender());
			pstmt.setDate(6,new java.sql.Date(staffobj.getDob().getTime()));
			pstmt.setDate(7,new java.sql.Date(staffobj.getDoj().getTime()));
			pstmt.setLong(8,staffobj.getPhone());
			pstmt.setString(9,staffobj.getAddress());
			pstmt.setString(10,staffobj.getStaffid());
			flag=pstmt.executeUpdate();
			
			//rst=pstmt.executeQuery();
			/*if(rst.next())
			{
				staffto=new StaffTO(rst.getString(1),rst.getString(2),rst.getString(3),rst.getString(4),rst.getString(5),rst.getDate(6),rst.getDate(7),rst.getLong(8),rst.getString(9),rst.getString(10));
				System.out.print("values updated");
				System.out.print(staffto.getFacultyname());
			}*/
			
	
		}
		catch(Exception e)
		{
			System.out.println("MODIFY SQL PANGA"+e);
		}
		return flag;
	}


	public void fetchStaffAttributes(String user,StaffTO lto)
	{
		
		PreparedStatement pstmt=null;
		try{
			pool=new ConnectionPool();
			con=pool.getConnection();
					
		
			String query="select * from staff_tab where username=?";
			pstmt=con.prepareStatement(query);
			
			pstmt.setString(1,user);
		
			ResultSet rst=pstmt.executeQuery();
			
			if(rst.next())
			{
				lto.setStaffid(rst.getString(1));
				lto.setFacultyname(rst.getString(2));
				lto.setDesignation(rst.getString(3));
				lto.setBranch(rst.getString(4));
				lto.setQualification(rst.getString(5));
				lto.setGender(rst.getString(6));
				lto.setDob(rst.getDate(7));
				lto.setDoj(rst.getDate(8));
				lto.setPhone(rst.getLong(9));
			    lto.setAddress(rst.getString(10));
			
			}
			
		}
		catch(Exception e)
		{
			System.out.print("Sql Error while fetching student data "+e);
		}
		finally
		{
			pool.freeConnection(con);
		}	
	}
	
	public ArrayList<StaffTO> viewStaffByDesignation(String desig)
	{
		StaffTO sto=null;
		ArrayList<StaffTO> al=new ArrayList<StaffTO>();
			
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select * from staff_tab where designation=?";
			pstmt=con.prepareStatement(query);
		
			pstmt.setString(1,desig);
		
			ResultSet rst=pstmt.executeQuery();
			while(rst.next())
			{
		
			  sto=new StaffTO(rst.getString(1),rst.getString(2),rst.getString(3),rst.getString(4),rst.getString(5),rst.getString(6),rst.getDate(7),rst.getDate(8),rst.getLong(9),rst.getString(10));
			  al.add(sto);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga fetching staff data using desig "+e);
			
		}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		System.out.println("StudentList in DAO  : "+al);
		return al;
	}
	
}
