package edu.campus.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import edu.campus.factory.ConnectionPool;


import edu.campus.model.to.UserTO;

public class LoginUserDB 
{
	Connection con;
	ConnectionPool pool;
	PreparedStatement pstmt,pstmt1;
	ResultSet rst;
	boolean flag;
	
	public UserTO userLogin(UserTO lto)
	{
		UserTO obj=null;
	try{
		pool=new ConnectionPool();
		con=pool.getConnection();
		
		
	//	String query="Select l.usertype,l.username,l.password,s.name FROM login_tab l,student_tab s where l.usertype=? and l.username=? and l.password=?";
		String query="select * from login_tab where usertype=? and username=? and password=?";
		pstmt=con.prepareStatement(query);
		pstmt.setString(1,lto.getUsertype());
		pstmt.setString(2,lto.getUsername());
		pstmt.setString(3,lto.getPassword());
		ResultSet rst=pstmt.executeQuery();
		
		if(rst.next())
		{
			
			obj=new UserTO(rst.getString(1),rst.getString(2),rst.getString(3));
			//sto.setName(rst.getString(4));
		}
		
	}
	catch(Exception e)
	{
		System.out.print("Sql Error While Login "+e);
	}
	finally
	{
		pool.freeConnection(con);
	}
	return obj;
	
	}

	
public int insertUserInLoginTab(UserTO uobj)
	{
		pool=new ConnectionPool();
		con=pool.getConnection();	
		int j=0;
		try
		{
			String query="insert into login_tab values(?,?,?,?)";
			pstmt=con.prepareStatement(query);
			
			pstmt.setString(1,uobj.getUsertype());
			pstmt.setString(2,uobj.getUsername());			
			pstmt.setString(3,uobj.getPassword());
			pstmt.setString(4,uobj.getEmailid());
			j=pstmt.executeUpdate();
			
			if(j>0)
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
			System.out.println("Sql Panga while inserting in staff in logindb "+e);
			
		}
		finally
		{
			pool.freeConnection(con);
		}
		return j;
}
	
	
	
	
	public int userForgetPassword(UserTO sto)
	{
		int flags=0;
		try{
		pool=new ConnectionPool();
		con=pool.getConnection();
			
		String query="update login_tab set password=? where usertype=? and emailID=? and username=? ";
		pstmt=con.prepareStatement(query);
		pstmt.setString(1,sto.getPassword());
		pstmt.setString(2,sto.getUsertype());
		pstmt.setString(3,sto.getEmailid());
		pstmt.setString(4,sto.getUsername());
		flags=pstmt.executeUpdate();
		}
		catch(Exception e){System.out.println("Sql err updating staff pass in login_tab"+e);}
			
		finally
		{
			pool.freeConnection(con);
		}
		return flags;
	
	}
	
	
	

	public UserTO checkOldPassword(UserTO uto)
	{
		UserTO userobj=null;

		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select password from login_tab where username=?";
			pstmt=con.prepareStatement(query);
			
			pstmt.setString(1,uto.getUsername());
			rst=pstmt.executeQuery();
			while(rst.next())
			{
			  userobj=new UserTO(rst.getString(1));
			  
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
		
		return userobj;
	}
	public int changeOldPassword(UserTO uto)
	{
		int k=0;
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="update login_tab set password=? where username=?";
			pstmt=con.prepareStatement(query);
			
			pstmt.setString(1,uto.getPassword());
			pstmt.setString(2,uto.getUsername());
			k=pstmt.executeUpdate();
			
			
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
}

