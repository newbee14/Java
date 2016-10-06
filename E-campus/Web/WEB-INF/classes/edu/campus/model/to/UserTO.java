package edu.campus.model.to;

public class UserTO 
{
	private String usertype,username,password,emailid,name;
	
	public UserTO() {
		super();
	}
	
	
	public UserTO(String password) {
		super();
		this.password = password;
	}
		public UserTO(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
		
		public UserTO(String usertype, String username, String password,
			String emailid) {
		super();
		this.usertype = usertype;
		this.username = username;
		this.password = password;
		this.emailid = emailid;
	}
	
	public UserTO(String usertype, String username, String password,
				String emailid, String name) {
			super();
			this.usertype = usertype;
			this.username = username;
			this.password = password;
			this.emailid = emailid;
			this.name = name;
		}


	public UserTO(String usertype, String username, String password) {
		super();
		this.usertype = usertype;
		this.username = username;
		this.password = password;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getUsername() {
		return username;
	}
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	
}

