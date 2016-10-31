package edu.campus.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import edu.campus.factory.ConnectionPool;
import edu.campus.model.to.SeatingPlanTO;
import edu.campus.model.to.SyllabusTO;

public class SyllabusDao {
	
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt=null;
	ResultSet rst=null;
	ArrayList<SyllabusTO> al=null;
	int k;
	public int saveSyllabus(SyllabusTO sto)
	{
		
			try
			{
				pool=new ConnectionPool();
			
				con=pool.getConnection();
			
				pstmt=con.prepareStatement("insert into syllabus_tab values(?,?,?)");
				pstmt.setString(1,sto.getDescription());
				pstmt.setString(2, sto.getFilename());
				pstmt.setString(3, sto.getContent());
				
			
				k=pstmt.executeUpdate();
				if(k>0)
					System.out.println("File saved.....");
			}
			catch(Exception e)
			{
				System.out.println("SQL Panga While Saving Profile : "+e);
			}
			return k;
	}

	
	public int saveSeatingPlan(SeatingPlanTO sto)
	{
		
			try
			{
				pool=new ConnectionPool();
			
				con=pool.getConnection();
			
				pstmt=con.prepareStatement("insert into seatingplan_tab values(?,?,?)");
				pstmt.setString(1,sto.getCourse());
				pstmt.setString(2, sto.getFilename());
				pstmt.setString(3, sto.getSem());
				
			
				k=pstmt.executeUpdate();
				if(k>0)
					System.out.println("File saved.....");
			}
			catch(Exception e)
			{
				System.out.println("SQL Panga While Saving Profile : "+e);
			}
			return k;
	}

	public ArrayList<SyllabusTO> viewSyllabus()
	{
			SyllabusTO sto=null;
			al=new ArrayList<SyllabusTO>();	
			try
			{
				pool=new ConnectionPool();
				con=pool.getConnection();
				pstmt=con.prepareStatement("select * from syllabus_tab where content='syllabus'");
				rst=pstmt.executeQuery();
				while(rst.next())
				{
				  sto=new SyllabusTO(rst.getString(1),rst.getString(2),rst.getString(3));
				  al.add(sto);
				}
			}
			catch(Exception e)
			{
				System.out.println("SQL Panga While View Profile : "+e);
			}
			finally
			{
				pool.freeConnection(con);				
			}
			return al;
	}
	
	public ArrayList<SyllabusTO> viewNotes()
	{
			SyllabusTO sto=null;
			al=new ArrayList<SyllabusTO>();	
			try
			{
				pool=new ConnectionPool();
				con=pool.getConnection();
				pstmt=con.prepareStatement("select * from syllabus_tab where content='notes'");
				rst=pstmt.executeQuery();
				while(rst.next())
				{
				  sto=new SyllabusTO(rst.getString(1),rst.getString(2),rst.getString(3));
				  al.add(sto);
				}
			}
			catch(Exception e)
			{
				System.out.println("SQL Panga While View Profile : "+e);
			}
			finally
			{
				pool.freeConnection(con);				
			}
			return al;
	}

	public ArrayList<SyllabusTO> viewPapers()
	{
			SyllabusTO sto=null;
			al=new ArrayList<SyllabusTO>();	
			try
			{
				pool=new ConnectionPool();
				con=pool.getConnection();
				pstmt=con.prepareStatement("select * from syllabus_tab where content='questionpapers'");
				rst=pstmt.executeQuery();
				while(rst.next())
				{
				  sto=new SyllabusTO(rst.getString(1),rst.getString(2),rst.getString(3));
				  al.add(sto);
				}
			}
			catch(Exception e)
			{
				System.out.println("SQL Panga While View Profile : "+e);
			}
			finally
			{
				pool.freeConnection(con);				
			}
			return al;
	}
	
	public SeatingPlanTO downloadSeatingPlan(String branch,String sem)
	{
		String file="";
		SeatingPlanTO sto=null;
		try
		{
			pool=new ConnectionPool();
			con=pool.getConnection();
			System.out.println("fielname in DAO : "+branch+" "+sem);
			pstmt=con.prepareStatement("select filename from seatingplan_tab where course=? and sem=?");
			pstmt.setString(1,branch);
			pstmt.setString(2,sem);
			
			rst=pstmt.executeQuery();
			if(rst.next())
			{
				System.out.println("Filename record found.....");
				sto=new SeatingPlanTO(rst.getString(1));
			}
		}
		catch(Exception e)
		{
			System.out.println("SQL Panga While View Profile : "+e);
		}
		finally
		{
			pool.freeConnection(con);				
		}
		
		return sto;

}

}