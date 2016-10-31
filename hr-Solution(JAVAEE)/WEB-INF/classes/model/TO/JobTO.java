package model.TO;
public class JobTO 
{
	int jobcode;
	String jobtitle,qualification,experience,location,salpackage;
	
	public JobTO() {
		super();
	}
	public JobTO(int jobcode, String jobtitle, String qualification,
			String experience, String location, String salpackage) {
		super();
		this.jobcode = jobcode;
		this.jobtitle = jobtitle;
		this.qualification = qualification;
		this.experience = experience;
		this.location = location;
		this.salpackage = salpackage;
	}
	public int getJobcode() {
		return jobcode;
	}
	public void setJobcode(int jobcode) {
		this.jobcode = jobcode;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getSalpackage() {
		return salpackage;
	}
	public void setSalpackage(String salpackage) {
		this.salpackage = salpackage;
	}
	
	
}
