package edu.campus.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import edu.campus.factory.ConnectionPool;

import edu.campus.model.to.UserStatusTO;

public class UserStatusDAO 
{
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt;

	
	public int insertStudentStatus(UserStatusTO obj)
	{
		Connection con=null;
		ConnectionPool pool=null;
		PreparedStatement pstmt;
		pstmt=null;
		
		String query;
		int k=0;
		
		try{	
			pool=new ConnectionPool();
			con=pool.getConnection();
			
			query="insert into studentstatus_tab values(?,?)";			
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,obj.getUsername());
			pstmt.setString(2,obj.getStatus());
		
			k=pstmt.executeUpdate();
			if(k>0)
			{
				System.out.println("Value Succesfully Inserted");
				
			}
			else
			{
				System.out.println("Insertion failed");
			}
			
		} catch (Exception e) {
			System.out.println("Sql panga During Insertion of student status"+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		return k;
		
	}
	
	public int insertStaffStatus(UserStatusTO obj)
	{
		Connection con=null;
		ConnectionPool pool=null;
		PreparedStatement pstmt;
		pstmt=null;
		
		String query;
		int k=0;
		
		try{	
			pool=new ConnectionPool();
			con=pool.getConnection();
			
			query="insert into staffstatus_tab values(?,?)";			
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,obj.getUsername());
			pstmt.setString(2,obj.getStatus());
		
			k=pstmt.executeUpdate();
			if(k>0)
			{
				System.out.println("Value Succesfully Inserted");
				
			}
			else
			{
				System.out.println("Insertion failed");
			}
			
		} catch (Exception e) {
			System.out.println("Sql panga During Insertion of staff status"+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		return k;
		
	}
	
	public int updateStudentStatus(UserStatusTO sto)
	{
		int k=0;
		PreparedStatement pstmt=null;
		pool=new ConnectionPool();
		con=pool.getConnection();
		 String query="update studentstatus_tab set status=? where rollnumber=?";
		
		   try
				{
					pstmt=con.prepareStatement(query);
					pstmt.setString(1,sto.getStatus());
					pstmt.setString(2,sto.getUsername());
					
					k=pstmt.executeUpdate();
				}
				catch(Exception e)
				{
					System.out.print("Sql Error while updating Student Status by teacher "+e);
				}
				finally
					{
						pool.freeConnection(con);
					}
		return k;
	}

	public int updateStaffStatus(UserStatusTO sto)
	{
		int k=0;
		PreparedStatement pstmt=null;
		pool=new ConnectionPool();
		con=pool.getConnection();
		 String query="update staffstatus_tab set Status=? where StaffID=?";
		
		   try
				{
					pstmt=con.prepareStatement(query);
					pstmt.setString(1,sto.getStatus());
					pstmt.setString(2,sto.getUsername());
					
					k=pstmt.executeUpdate();
				}
				catch(Exception e)
				{
					System.out.print("Sql Error while updating Staff Status by teacher "+e);
				}
				finally
					{
						pool.freeConnection(con);
					}
		return k;
	}

}
