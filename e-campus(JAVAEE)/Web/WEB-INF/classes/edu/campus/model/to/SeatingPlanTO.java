package edu.campus.model.to;

public class SeatingPlanTO 
{
	String course,sem, filename;

	public SeatingPlanTO() {
		super();
	}
	
	
	
	public SeatingPlanTO(String filename) {
		super();
		this.filename = filename;
	}



	public SeatingPlanTO(String course, String sem, String filename) {
		super();
		this.course = course;
		this.sem = sem;
		this.filename = filename;
		
	}



	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getSem() {
		return sem;
	}

	public void setSem(String sem) {
		this.sem = sem;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	
}
