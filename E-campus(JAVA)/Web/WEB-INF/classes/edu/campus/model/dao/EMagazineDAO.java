package edu.campus.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import edu.campus.factory.ConnectionPool;
import edu.campus.model.to.EMagazineTO;

public class EMagazineDAO {
	
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt=null;
	ResultSet rst=null;
	EMagazineTO emto=null;
	ArrayList<EMagazineTO> al=null;
	int k;
	
	
	public int addEMagazineContent(EMagazineTO emto)
	{
		pool=new ConnectionPool();
		con=pool.getConnection();	
		
			try
			{
			String query="update emagazine_tab set username=?,name=?,branch=?,title=?,pic=?,theme=?,completearticle=? where articleid=?";
			pstmt=con.prepareStatement(query);
			
			pstmt.setString(1,emto.getUsername());
			pstmt.setString(2,emto.getName());
			pstmt.setString(3,emto.getBranch());
			pstmt.setString(4,emto.getTitle());
			pstmt.setBytes(5,emto.getPic());
			pstmt.setString(6,emto.getTheme());
			pstmt.setString(7,emto.getCompletearticle());
			pstmt.setInt(8,emto.getArticleid());
			k=pstmt.executeUpdate();
			}
			catch(Exception e){System.out.println("Sql error while Adding EMagazine.."+e);}
			
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return k;
	}
	
	
	public ArrayList<EMagazineTO> fetchEMagazineContent()
	{
	al=new ArrayList<EMagazineTO>();
		
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select title,theme from emagazine_tab";
			pstmt=con.prepareStatement(query);
			rst=pstmt.executeQuery();
			while(rst.next())
			{
				emto=new EMagazineTO();
				emto.setTitle(rst.getString(1));
				emto.setTheme(rst.getString(2));
				al.add(emto);
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
		
		return al;
	}
	
	
	
	public String fetchCompleteArticle(int articleid)
	{
		String completearticle=null;
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select completearticle from emagazine_tab where articleid=?";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, articleid);
			rst=pstmt.executeQuery();
			if(rst.next())
			{
				
				completearticle=rst.getString(1);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while fetching complete article in emagazine_tab "+e);
			
		}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return completearticle;
	}
	
	
	
	public byte[] fetchEMagazineImageOnLoad(int id)
	{
		byte pic[]=null;
		try 
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select pic from emagazine_tab where articleid=?";
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1,id);
			rst=pstmt.executeQuery();
			if(rst.next())
			{
				
				pic=rst.getBytes(1);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Sql Panga while fetching complete article in emagazine_tab "+e);
			
		}
		finally
		{
			
				pool.freeConnection(con);
			
		}
		return pic;
	}
	
	
	
	
	public int autoIncrementArticleID()
	{
		int articleid=0;
		try
		{
			
			pool=new ConnectionPool();
			con=pool.getConnection();
			String query="select articleid from emagazine_tab";
			pstmt=con.prepareStatement(query);
			rst=pstmt.executeQuery();
			if(rst.last())
			{
				
				articleid=rst.getInt(1)+1;
				
			}
			else
			{
				articleid++;
			}
		}
		catch(Exception e)
		{
			System.out.println("SQL ERROR WHILE articleID: "+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		return articleid;
	
	
	}
	
	
}
