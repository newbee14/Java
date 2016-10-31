package edu.campus.model.to;

import java.util.Date;

public class StudentTO {
	private String username;
	
	private String name;
	private String branch;
	private int batch;
	private Date dob;
	private String gender;	
	private long mobilenumber;	
	private String address;
	
	
	public StudentTO(String username, String name, String branch, int batch,
			 String gender, Date dob,long mobilenumber, String address) {
		super();
		this.username = username;
		this.name = name;
		this.branch = branch;
		this.batch = batch;
		this.dob = dob;
		this.gender = gender;
		this.mobilenumber = mobilenumber;
		this.address = address;
	}
	
	
	public StudentTO(String username) {
		super();
		this.username = username;
	}


	public StudentTO() {
		super();
	}
	
	
	public StudentTO(String username, String name, String branch, int batch,
			Date dob, String gender, long mobilenumber, String address) {
		super();
		this.username = username;
		this.name = name;
		this.branch = branch;
		this.batch = batch;
		this.dob = dob;
		this.gender = gender;
		this.mobilenumber = mobilenumber;
		this.address = address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public int getBatch() {
		return batch;
	}
	public void setBatch(int batch) {
		this.batch = batch;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public long getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(long mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
