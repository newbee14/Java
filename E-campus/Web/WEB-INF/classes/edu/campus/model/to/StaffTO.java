package edu.campus.model.to;

import java.util.Date;



public class StaffTO {
	private String staffid,facultyname,designation,branch,qualification,gender;
	private Date dob,doj;
	private long phone;
	
	private String address;

	public StaffTO() {
		super();
	}
	
	public StaffTO(String staffid) {
		super();
		this.staffid = staffid;
	}

	public StaffTO(String staffid, String facultyname, String designation,
			String branch, String qualification, String gender, Date dob,
			Date doj, long phone, String address) {
		super();
		this.staffid = staffid;
		this.facultyname = facultyname;
		this.designation = designation;
		this.branch = branch;
		this.qualification = qualification;
		this.gender = gender;
		this.dob = dob;
		this.doj = doj;
		this.phone = phone;
		this.address = address;
	}
	public String getStaffid() {
		return staffid;
	}

	public void setStaffid(String staffid) {
		this.staffid = staffid;
	}

	public String getFacultyname() {
		return facultyname;
	}

	public void setFacultyname(String facultyname) {
		this.facultyname = facultyname;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Date getDoj() {
		return doj;
	}

	public void setDoj(Date doj) {
		this.doj = doj;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	
}

	
	
	