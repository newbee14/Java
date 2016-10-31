package model.TO;

public class RegisterTO {
	String fullname;
	String email_id;
	String password;
	
	public RegisterTO()
	{
		
	}
	public void setFullname(String f)
	{
		fullname=f;
	}
public	void setEmail_id(String e)
	{
		email_id=e;
	}
	public void setPassword(String p)
	{
		password=p;
	}
	
	public String getFullname() {
		return fullname;
	}
	public String getEmail_id() {
		return email_id;
	}
	public String getPassword() {
		return password;
	}
  
   }

