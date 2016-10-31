package edu.campus.factory;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ConnectionPool {

	Connection con;
	DataSource ds;
	
	public ConnectionPool()
	{
		try{
			InitialContext ic=new InitialContext();
			ds=(DataSource)ic.lookup("java:comp/env/jdbc/campus");
			}
		catch(Exception e)
		{
			
			System.out.println("SQL ERROR in constructor in intial context"+e);
		}
	}
	
	public Connection getConnection()
	{
		try{
			con=ds.getConnection();
		}catch(SQLException e)
		
		{
			System.out.println("SQL Error while getting connection"+e);
		}
		return con;
	}
	
	public void freeConnection(Connection con)
	{
		try{
			con.close();
		}
		catch(Exception e)
		{
			System.out.println("Error while closing"+e);
		}
	}
	
}
