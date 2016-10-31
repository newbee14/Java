package edu.campus.model.to;

public class DonorTO {
	private int donorid;
	private String name;
	private String designation;
	private int age;
	private String gender;
	private String bloodgroup;
	private long mobilenumber;
	private String diseases;
	
	
	
	public DonorTO(int donorid, String name, String designation, int age,
			String gender, String bloodgroup, long mobilenumber, String diseases) {
		super();
		this.donorid = donorid;
		this.name = name;
		this.designation = designation;
		this.age = age;
		this.gender = gender;
		this.bloodgroup = bloodgroup;
		this.mobilenumber = mobilenumber;
		this.diseases = diseases;
	}

	public int getDonorid() {
		return donorid;
	}

	public void setDonorid(int donorid) {
		this.donorid = donorid;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public long getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(long mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public String getDiseases() {
		return diseases;
	}
	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}
}
