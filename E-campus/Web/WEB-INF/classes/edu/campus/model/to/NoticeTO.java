package edu.campus.model.to;

import java.util.Date;

public class NoticeTO {
	private int noticeid;
	private String title;
	private Date d;
	private String description;
	
	public NoticeTO() {
		super();
	}
	public NoticeTO(int noticeid, String title, Date d, String description) {
		super();
		this.noticeid = noticeid;
		this.title = title;
		this.d = d;
		this.description = description;
	}
	public int getNoticeid() {
		return noticeid;
	}
	public void setNoticeid(int noticeid) {
		this.noticeid = noticeid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getD() {
		return d;
	}
	public void setD(Date d) {
		this.d = d;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

}
	
	
	
