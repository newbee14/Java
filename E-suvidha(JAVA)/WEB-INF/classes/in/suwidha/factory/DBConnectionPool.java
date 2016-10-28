package in.suwidha.factory;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBConnectionPool 
{
	Connection con;
	DataSource ds;
	DBConnectionPool()
	{
		try 
		{
			InitialContext ic=new InitialContext();
			ds=(DataSource)ic.lookup("java:comp/env/jdbc/tgdb");
		}
		catch (NamingException e) 
		{
			System.out.println("exception here"+e);
			e.printStackTrace();
		}
	}
	
	public Connection get_DBConnection()
	{
		try
		{
			con=ds.getConnection();
		}
		catch(Exception e)
		{
			System.out.println("con exception"+e);
		}
		return(con);
	}
	
	public static DBConnectionPool getInstance()
	{
		return new DBConnectionPool();
	}
	
	public void freeDBConnection(Connection con)
	{
		try
		{
			con.close();
		}
		catch(Exception e)
		{
			System.out.println("con close exception"+e);
		}
	}
}
