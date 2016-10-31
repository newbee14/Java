package in.suwidha.dao;

import in.suwidha.factory.DBConnectionPool;
import in.suwidha.to.LoginUserTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;



public class LoginUserDAO
{
	
	
	public boolean loginUser(LoginUserTO uto)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("select username,userid,password from usertab where username=? and userid=? and password=?");
			pstmt.setString(1,uto.getUsername());
			pstmt.setInt(2,uto.getUserid());
			pstmt.setString(3,uto.getPassword());
			ResultSet rst=pstmt.executeQuery();
			if(rst.next())
			{
				t=true;
				
			}
			else
			{
				t=false;
			}
			
		}
		catch(Exception e)
		{
			System.out.println("sql panga"+e);
		}
		return t;
	
	}
	public int fetchID()
	{
		int id=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select userid from usertab");
			
			ResultSet rst=pstmt.executeQuery();
			if(rst.last())
				id=rst.getInt(1)+1;
			else
				id=101;
		}
		catch(Exception e)
		{
			System.out.println("Sql panga in id fetching"+e);
		}
		finally
		{
			Connection con=dbc.get_DBConnection();
			dbc.freeDBConnection(con);
		}
		return id;
	}
	public void fetchInfo(int userid,LoginUserTO to)
	{
		System.out.println("2");
		
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Select * from usertab where userid=?");
			pstmt.setInt(1,userid);
			ResultSet rst=pstmt.executeQuery();	
			while(rst.next()==true)
			{
				to.setName(rst.getString(1));
				to.setFathername(rst.getString(3));
				to.setContact(rst.getLong(5));
				to.setEmail(rst.getString(6));
				to.setAge(rst.getInt(7));
				to.setUserid(userid);
				to.setDoorno(rst.getString(10));
				to.setDoorno1(rst.getString(11));
				to.setCity(rst.getString(12));
				to.setCity1(rst.getString(13));
				to.setMandal(rst.getString(14));
				to.setMandal1(rst.getString(15));
				to.setDistrict(rst.getString(16));
				to.setDistrict1(rst.getString(17));
				to.setPincode(rst.getInt(18));
				to.setPincode1(rst.getInt(19));
				to.setDate(rst.getDate(20));
				to.setPlace(rst.getString(21));
				to.setBloodgroup(rst.getString(22));
			}
			System.out.println("dao returns:");
		}
		catch(Exception e)
		{
			System.out.println("here exception "+e);
		}
		finally
		{
			Connection con=dbc.get_DBConnection();
			dbc.freeDBConnection(con);
		}
	}
	public boolean updateUsersInfo(LoginUserTO u)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			System.out.println("Dao");
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("update usertab set name=?,fathername=?,contact=?,email=?,age=?,doorno=?,doorno1=?,city=?,city1=?,mandal=?,mandal1=?,district=?,district1=?,pincode=?,pincode1=?,Date=?,place=?,bloodgroup=? where userid=?");
			pstmt.setString(1,u.getName());
			pstmt.setString(2,u.getFathername());
			pstmt.setLong(3,u.getContact());
			pstmt.setString(4,u.getEmail());
			pstmt.setInt(5,u.getAge());
			pstmt.setString(6,u.getDoorno());
			pstmt.setString(7,u.getDoorno1());
			pstmt.setString(8,u.getCity());
			pstmt.setString(9,u.getCity1());
			pstmt.setString(10,u.getMandal());
			pstmt.setString(11,u.getMandal1());
			pstmt.setString(12,u.getDistrict());
			pstmt.setString(13,u.getDistrict1());
			pstmt.setInt(14,u.getPincode());
			pstmt.setInt(15,u.getPincode1());
			pstmt.setDate(16,new java.sql.Date((u.getDate()).getTime()));
			pstmt.setString(17,u.getPlace());
			pstmt.setString(18,u.getBloodgroup());
			pstmt.setInt(19,u.getUserid());
			System.out.println("last stmt");
			int i=pstmt.executeUpdate();
			if(i==1)
			{
				t=true;
				
			}
			else if(i==0)
			{
				t=false;
				System.out.println(u.getPlace());
			}
		}
		catch(Exception e)
		{
			System.out.println("Sql panga in update 0"+e);
		}
		return t;
	}
	public boolean registerUsers(LoginUserTO u)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("Insert into usertab values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1,u.getName());
			pstmt.setString(2,u.getUsername());
			pstmt.setString(3,u.getFathername());
			pstmt.setString(4,u.getPassword());
			pstmt.setLong(5,u.getContact());
			pstmt.setString(6,u.getEmail());
			pstmt.setInt(7,u.getAge());
			pstmt.setInt(8,u.getUserid());
			pstmt.setString(9,u.getSex());
			pstmt.setString(10,u.getDoorno());
			pstmt.setString(11,u.getDoorno1());
			pstmt.setString(12,u.getCity());
			pstmt.setString(13,u.getCity1());
			pstmt.setString(14,u.getMandal());
			pstmt.setString(15,u.getMandal1());
			pstmt.setString(16,u.getDistrict());
			pstmt.setString(17,u.getDistrict1());
			pstmt.setInt(18,u.getPincode());
			pstmt.setInt(19,u.getPincode1());
			pstmt.setDate(20,new java.sql.Date((u.getDate()).getTime()));
			pstmt.setString(21,u.getPlace());
			pstmt.setString(22,u.getBloodgroup());
			int i=pstmt.executeUpdate();
			if(i==1)
			{
				t=true;
				
			}
			else
			{
				t=false;
			}
		}
		catch(Exception e)
		{
			System.out.println("Sql panga"+e);
		}
		return t;
	}
	
	public boolean checkUserInfo(LoginUserTO uto)
	{
		boolean t=false;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		System.out.println(" : "+uto.getUsername()+" "+uto.getContact()+" "+uto.getEmail());

		try
		{
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("select * from usertab where username=? and contact=? and email=?");
			
			pstmt.setString(1,uto.getUsername());
			pstmt.setLong(2,uto.getContact());
			pstmt.setString(3,uto.getEmail());
			
			ResultSet rst=pstmt.executeQuery();
			if(rst.next())
				{
					t=true;
				}
		}
		catch(Exception e)
		{
			System.out.println("sql panga"+e);
		}
		return t;
	
	}
	
	
	
	public boolean updateUserInfo(LoginUserTO uto,String pass)
	{	
		
		boolean k=false;
		int i=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		Connection con=dbc.get_DBConnection();
			try
			{
				
				PreparedStatement pstmt=con.prepareStatement("Update usertab set password=? where username=? and email=? and contact=?");
				pstmt.setString(1,pass);
				pstmt.setString(2,uto.getUsername());
				pstmt.setString(3,uto.getEmail());
				pstmt.setLong(4,uto.getContact());
				i=pstmt.executeUpdate();
				if(i==1)
					k=true;
			}
			catch(Exception e)
			{
				System.out.print(e);
			}
			finally
			{
			dbc.freeDBConnection(con);
			}
			return(k);
	}
	
	public boolean updateUserPassword(LoginUserTO uto,int id)
	{	
		
		boolean k=false;
		int i=0;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		Connection con=dbc.get_DBConnection();
			try
			{
				
				PreparedStatement pstmt=con.prepareStatement("Update usertab set password=? where userid=?");
				pstmt.setString(1,uto.getPassword());
				pstmt.setLong(2,id);
				i=pstmt.executeUpdate();
				if(i==1)
					k=true;
			}
			catch(Exception e)
			{
				System.out.print(e);
			}
			finally
			{
			dbc.freeDBConnection(con);
			}
			return(k);
	}
	public String getEmail(int userid)
	{
		String email=null;
		DBConnectionPool dbc=DBConnectionPool.getInstance();
		try
		{
			
			Connection con=dbc.get_DBConnection();
			PreparedStatement pstmt=con.prepareStatement("select email from usertab where userid=?");
			pstmt.setInt(1,userid);
			ResultSet rst=pstmt.executeQuery();
			if(rst.next())
			{
				email=rst.getString(1);
				System.out.println("email is:"+email);
			}
		}
		catch(Exception e)
		{
			System.out.println("sql panga"+e);
		}
		return email;
	
	}
}
