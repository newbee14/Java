package edu.campus.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import edu.campus.factory.ConnectionPool;
import edu.campus.model.to.HodNoticeTO;
import edu.campus.model.to.NoticeTO;

public class NoticeDAO {
	
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt=null;
	ResultSet rst=null;
	NoticeTO nto=null;
	ArrayList<NoticeTO> al=null;
	int k;
	
	public int autoIncrementNoticeID(String noticetable)
	{
		int noticeid=0;
		try
		{
			
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select noticeid from "+noticetable;
			pstmt=con.prepareStatement(query);
			rst=pstmt.executeQuery();
			if(rst.last())
			{
				
				noticeid=rst.getInt(1)+1;
				System.out.println("noticeid= "+noticeid);
			}
			else
			{
				noticeid++;
			}
		}
		catch(Exception e)
		{
			System.out.println("SQL ERROR WHILE NOTICE_ID: "+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		return noticeid;
	
	
	}
	
	public int addNoticeByAdmin(NoticeTO nto)
	{
		pool=new ConnectionPool();
		con=pool.getConnection();	
		
			try
			{
			String query="update noticeadmin_tab set title=?,date=?,description=? where noticeid=?";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(4,nto.getNoticeid());
			pstmt.setString(1,nto.getTitle());
			pstmt.setDate(2,new java.sql.Date(nto.getD().getTime()));
			pstmt.setString(3,nto.getDescription());
			k=pstmt.executeUpdate();
			}
			catch(Exception e){System.out.println("Sql error while Adding notice via admin"+e);}
			
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return k;
		}
	
	
	public int addNoticeByHod(HodNoticeTO dnto)
	{
		pool=new ConnectionPool();
		con=pool.getConnection();	
		
			try
			{
			String query="update noticehod_tab set title=?,date=?,description=?,name=?,branch=? where noticeid=?";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(6,dnto.getNoticeid());
			pstmt.setString(1,dnto.getTitle());
			pstmt.setDate(2,new java.sql.Date(dnto.getD().getTime()));
			pstmt.setString(3,dnto.getDescription());
			pstmt.setString(4,dnto.getName());
			pstmt.setString(5,dnto.getBranch());
			k=pstmt.executeUpdate();
			}
			catch(Exception e){System.out.println("Sql error while Adding notice via hod"+e);}
			
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return k;
		}
	public ArrayList<NoticeTO> fetchNotices()
	{
	al=new ArrayList<NoticeTO>();
		
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select title from noticeadmin_tab";
			pstmt=con.prepareStatement(query);
			rst=pstmt.executeQuery();
			while(rst.next())
			{
				nto=new NoticeTO();
				nto.setTitle(rst.getString(1));
				al.add(nto);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while fetching notices in noticeadmin_tab "+e);
			
		}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		System.out.println("notices  in DAO  : "+al);
		return al;
	}

	
	
	public String fetchNoticeDescription(int noticeid)
	{
		String description=null;
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select Description from noticeadmin_tab where noticeid=?";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1,noticeid);
			rst=pstmt.executeQuery();
			if(rst.next())
			{
				System.out.println(rst.getString(1));
				description=rst.getString(1);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while fetching notice Description in noticeadmin_tab "+e);
			
		}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return description;
		
	}


	
	public String fetchNoticeDescriptionForDept(int noticeid,String branch)
	{
		String description=null;
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select Description from noticehod_tab where noticeid=? and branch=?";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1,noticeid);
			pstmt.setString(2,branch);
			rst=pstmt.executeQuery();
			if(rst.next())
			{
				System.out.println(rst.getString(1));
				description=rst.getString(1);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while fetching notice Description in noticeadmin_tab "+e);
			
		}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return description;
		
	}

	
	
	
	
	
	public ArrayList<NoticeTO> fetchNoticesInStudentHome(String branch)
	{
	al=new ArrayList<NoticeTO>();
		
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select title from noticehod_tab where branch=?";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, branch);
			rst=pstmt.executeQuery();
			while(rst.next())
			{
				nto=new NoticeTO();
				nto.setTitle(rst.getString(1));
				al.add(nto);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while fetching notices in noticeadmin_tab "+e);
			
		}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		System.out.println("notices  in DAO  : "+al);
		return al;
	}

	
	
}
