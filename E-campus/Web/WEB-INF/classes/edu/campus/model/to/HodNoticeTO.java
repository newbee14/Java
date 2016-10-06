package edu.campus.model.to;

import java.util.Date;

public class HodNoticeTO extends NoticeTO
{
	private String name;
	private String branch;
	public HodNoticeTO(int noticeid, String title, Date d, String description,
			String name, String branch) {
		super(noticeid, title, d, description);
		this.name = name;
		this.branch = branch;
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
	
	
	
	

}
