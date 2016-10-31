package model.TO;

public class ShortlistApplicantTO {
String username;
String jobcode;
String applied_date;

String graduation;
int g_marks;
int g_yof;
String postgraduation;
int pg_marks;
int pg_yof;
String domain;
String skill;
public ShortlistApplicantTO(String username, String jobcode,
		String applied_date, String graduation, int g_marks, int g_yof,
		String postgraduation, int pg_marks, int pg_yof, String domain,
		String skill) {
	super();
	this.username = username;
	this.jobcode = jobcode;
	this.applied_date = applied_date;
	this.graduation = graduation;
	this.g_marks = g_marks;
	this.g_yof = g_yof;
	this.postgraduation = postgraduation;
	this.pg_marks = pg_marks;
	this.pg_yof = pg_yof;
	this.domain = domain;
	this.skill = skill;
}
public ShortlistApplicantTO() {
	super();
	// TODO Auto-generated constructor stub
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getJobcode() {
	return jobcode;
}
public void setJobcode(String jobcode) {
	this.jobcode = jobcode;
}
public String getApplied_date() {
	return applied_date;
}
public void setApplied_date(String applied_date) {
	this.applied_date = applied_date;
}
public String getGraduation() {
	return graduation;
}
public void setGraduation(String graduation) {
	this.graduation = graduation;
}
public int getG_marks() {
	return g_marks;
}
public void setG_marks(int g_marks) {
	this.g_marks = g_marks;
}
public int getG_yof() {
	return g_yof;
}
public void setG_yof(int g_yof) {
	this.g_yof = g_yof;
}
public String getPostgraduation() {
	return postgraduation;
}
public void setPostgraduation(String postgraduation) {
	this.postgraduation = postgraduation;
}
public int getPg_marks() {
	return pg_marks;
}
public void setPg_marks(int pg_marks) {
	this.pg_marks = pg_marks;
}
public int getPg_yof() {
	return pg_yof;
}
public void setPg_yof(int pg_yof) {
	this.pg_yof = pg_yof;
}
public String getDomain() {
	return domain;
}
public void setDomain(String domain) {
	this.domain = domain;
}
public String getSkill() {
	return skill;
}
public void setSkill(String skill) {
	this.skill = skill;
}






}
