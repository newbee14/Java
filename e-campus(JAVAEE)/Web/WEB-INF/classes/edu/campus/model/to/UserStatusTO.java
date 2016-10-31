package edu.campus.model.to;

public class UserStatusTO
{
	String username, status;

	public UserStatusTO(String username, String status) {
		super();
		this.username = username;
		this.status = status;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	

}
