package model.TO;

public class InterviewTO {

	String jobcode;
	String date;
	String interviewer;
	String venue;
	String time;
	String writen;
	String technical;
	String hr;
	
	String name;
	String username;
	String writentestmarks;
	String interview_marks;
	String status;
	
	public InterviewTO(String name, String username, String jobcode,String writentestmarks ,String interview_marks,String status)
	{
		this.name=name;
		this.username=username;
		this.jobcode=jobcode;
		this.writentestmarks=writentestmarks;
		this.interview_marks=interview_marks;
		this.status=status;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getWritentestmarks() {
		return writentestmarks;
	}
	public void setWritentestmarks(String writentestmarks) {
		this.writentestmarks = writentestmarks;
	}
	public String getInterview_marks() {
		return interview_marks;
	}
	public void setInterview_marks(String interview_marks) {
		this.interview_marks = interview_marks;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public InterviewTO(String jobcode, String date, String interviewer,
			String venue, String time, String writen, String technical,
			String hr) {
		super();
		this.jobcode = jobcode;
		this.date = date;
		this.interviewer = interviewer;
		this.venue = venue;
		this.time = time;
		this.writen = writen;
		this.technical = technical;
		this.hr = hr;
	}
	public String getJobcode() {
		return jobcode;
	}
	public void setJobcode(String jobcode) {
		this.jobcode = jobcode;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getInterviewer() {
		return interviewer;
	}
	public void setInterviewer(String interviewer) {
		this.interviewer = interviewer;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getWriten() {
		return writen;
	}
	public void setWriten(String writen) {
		this.writen = writen;
	}
	public String getTechnical() {
		return technical;
	}
	public void setTechnical(String technical) {
		this.technical = technical;
	}
	public String getHr() {
		return hr;
	}
	public void setHr(String hr) {
		this.hr = hr;
	}
	
}
