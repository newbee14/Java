package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.News;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class BasicDAO 
{
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		Connection con= dbc.get_DBConnection();
		public ArrayList<News> getAllNews()
		{
			
			ArrayList<News> at=new ArrayList<News>();
			News n;
			try
			{
				PreparedStatement pstmt=con.prepareStatement("select * from news_tab");
				ResultSet rst=pstmt.executeQuery();
				while(rst.next()==true)
				{
					n=new News(rst.getString(2),rst.getString(3),rst.getString(4));
					at.add(n);
				}
				
			}
			catch(Exception e)
			{
				System.out.print(e);
			}
			finally
			{
				dbc.freeDBConnection(con);
			}
			return(at);
		 }
}
