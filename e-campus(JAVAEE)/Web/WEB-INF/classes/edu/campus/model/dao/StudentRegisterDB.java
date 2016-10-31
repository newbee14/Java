package edu.campus.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import edu.campus.factory.ConnectionPool;
import edu.campus.model.to.NoDueTO;
import edu.campus.model.to.StudentTO;

public class StudentRegisterDB 
{
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt;

	
	public int regsiterStudent(StudentTO obj)
	{
		Connection con=null;
		ConnectionPool pool=null;
		PreparedStatement pstmt;
		pstmt=null;
	
	//	ResultSet rst=null;
		String query;
		int k=0;
		
		try{	
			pool=new ConnectionPool();
			con=pool.getConnection();
			// values inserted in student table for registration purpose
		
			query="insert into student_tab values(?,?,?,?,?,?,?,?)";			
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,obj.getUsername());
			pstmt.setString(2,obj.getName());
			pstmt.setString(3,obj.getBranch());
			pstmt.setInt(4,obj.getBatch());
			pstmt.setString(5,obj.getGender());
			pstmt.setDate(6,new java.sql.Date(obj.getDob().getTime()));
			pstmt.setLong(7,obj.getMobilenumber());
			pstmt.setString(8,obj.getAddress());
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
			System.out.println("Sql panga During Insertion "+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		return k;
		
	}

	
	public int valuesAddedInNoDueViaStudent(NoDueTO obj)
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
			// values inserted in student table for registration purpose
			try 
			{
			query="insert into nodues_tab values(?,?,?,?,?)";			
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,obj.getUsername());
			pstmt.setBoolean(2,obj.isTeacher());
			pstmt.setBoolean(3,obj.isWarden());
			pstmt.setBoolean(4,obj.isLibrarian());
			pstmt.setBoolean(5,obj.isAccountant());
		
			}
			catch(Exception e){System.out.println("sql error while inserting into no-dues table"+e);}
				
			k=pstmt.executeUpdate();
			
			if(k>0 )
			{
				System.out.println("Value Succesfully Inserted");
				
			}
			else
			{
				System.out.println("Insertion failed");
			}
			
		} catch (Exception e) {
			System.out.println("Sql panga During Insertion "+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		return k;
		
	}

	public void fetchStudentAttributes(String user,StudentTO lto)
	{
		
		PreparedStatement pstmt=null;
		try{
			pool=new ConnectionPool();
			con=pool.getConnection();
					
		
			String query="select * from student_tab where username=?";
			pstmt=con.prepareStatement(query);
			
			pstmt.setString(1,user);
		
			ResultSet rst=pstmt.executeQuery();
			
			if(rst.next())
			{
				lto.setUsername(rst.getString(1));
				lto.setName(rst.getString(2));
				lto.setBranch(rst.getString(3));
				lto.setBatch(rst.getInt(4));
				lto.setGender(rst.getString(5));
				lto.setDob(rst.getDate(6));
				lto.setMobilenumber(rst.getLong(7));
			    lto.setAddress(rst.getString(8));
			
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
	
	public void fetchNoDues(String rollnum,NoDueTO nto)
	{
		
		PreparedStatement pstmt=null;
		try{
			pool=new ConnectionPool();
			con=pool.getConnection();
					
		
			String query="select * from nodues_tab where username=?";
			pstmt=con.prepareStatement(query);
			
			pstmt.setString(1,rollnum);
		
			ResultSet rst=pstmt.executeQuery();
			
			if(rst.next())
			{
				nto.setUsername(rst.getString(1));
				nto.setTeacher(rst.getBoolean(2));
				nto.setWarden(rst.getBoolean(3));
				nto.setLibrarian(rst.getBoolean(4));
				nto.setAccountant(rst.getBoolean(5));
			
			}
			
		}
		catch(Exception e)
		{
			System.out.print("Sql Error while fetching nodues data "+e);
		}
		finally
		{
			pool.freeConnection(con);
		}
		
		
	}



public int updateNoDuesByStaff(String rollnumber, String usertype,boolean value)
{
	int k=0;
	PreparedStatement pstmt=null;
	pool=new ConnectionPool();
	con=pool.getConnection();
	    String query="";
	    System.out.println("in db :"+rollnumber+" "+usertype+" "+value);
		if(usertype.equals("warden"))			 	 query="update nodues_tab set warden_nd=? where username=?";
		else if(usertype.equals("librarian"))	 query="update nodues_tab set librarian_nd=? where username=?";
		else if(usertype.equals("accountant"))query="update nodues_tab set accountant_nd=? where username=?";
		else if(usertype.equals("teacher"))    	  query="update nodues_tab set teacher_nd=? where username=?";
			
	   try
			{
				pstmt=con.prepareStatement(query);
				pstmt.setBoolean(1,value);
				pstmt.setString(2,rollnumber);
				k=pstmt.executeUpdate();
			}
			catch(Exception e)
			{
				System.out.print("Sql Error while updating nodues by warden "+e);
			}
			finally
				{
					pool.freeConnection(con);
				}
	return k;
}

public StudentTO viewStudentDetails(StudentTO studentto)
{
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt;
	pstmt=null;	
	String query;

	StudentTO sto=null;
	ResultSet rst=null;
	try 
	{
		System.out.println("DB 1");
		pool=new ConnectionPool();
		con=pool.getConnection();
		query="select * from student_tab where username=?";
		pstmt=con.prepareStatement(query);
		pstmt.setString(1,studentto.getUsername());
		rst=pstmt.executeQuery();
		if(rst.next())
		{
			sto=new StudentTO(rst.getString(1),rst.getString(2),rst.getString(3),rst.getInt(4),rst.getString(5),rst.getDate(6),rst.getLong(7),rst.getString(8));
			
		}
	}
	catch(Exception e)
	{
		System.out.println("SQL PANGA"+e);
	}
	return sto;
}

public int modifyStudentDetails(StudentTO stm){
	Connection con=null;
	ConnectionPool pool=null;
	PreparedStatement pstmt;
	pstmt=null;	
	String query;
	int flag=0;

	try 
	{
		System.out.println("DB 1");
		pool=new ConnectionPool();
		con=pool.getConnection();
		query="update student_tab set name=?,branch =?,batch=?,gender=?,dob=?,phone=?,address=?  where username=?";
		pstmt=con.prepareStatement(query);
	
		pstmt.setString(1,stm.getName());
		pstmt.setString(2,stm.getBranch());
		pstmt.setInt(3,stm.getBatch());
		pstmt.setString(4,stm.getGender());
		pstmt.setDate(5,new java.sql.Date(stm.getDob().getTime()));
		pstmt.setLong(6,stm.getMobilenumber());
		pstmt.setString(7,stm.getAddress());
		pstmt.setString(8,stm.getUsername());
		flag=pstmt.executeUpdate();
		
		
	}
	catch(Exception e)
	{
		System.out.println("SQL PANGA"+e);
	}
	return flag;
}
public ArrayList<StudentTO> viewStudentByBranch(String branch, int batch)
{
	StudentTO sto=null;
	ArrayList<StudentTO> al=new ArrayList<StudentTO>();
		
	try 
	{
		pool=new ConnectionPool();
		con=pool.getConnection();
		String query="select * from student_tab where branch=? and batch=?";
		pstmt=con.prepareStatement(query);
		System.out.println("branch : "+branch);
		pstmt.setString(1,branch);
		pstmt.setInt(2,batch);
		ResultSet rst=pstmt.executeQuery();
		while(rst.next())
		{
	
		  sto=new StudentTO(rst.getString(1),rst.getString(2),rst.getString(3),rst.getInt(4),rst.getString(5),rst.getDate(6),rst.getLong(7),rst.getString(8));
		  al.add(sto);
		}
		
	}
	catch(Exception e)
	{
		System.out.println("Sql Panga fetching student data using branch "+e);
		
	}
	finally
	{
		
			pool.freeConnection(con);
		
	}
	System.out.println("StudentList in DAO  : "+al);
	return al;
}
}