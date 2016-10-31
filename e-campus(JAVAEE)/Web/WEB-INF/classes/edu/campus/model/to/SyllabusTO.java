package edu.campus.model.to;

public class SyllabusTO
{
	private String description, filename, content;
	//filename

	
	public SyllabusTO() {
		super();
	}


	public SyllabusTO(String description, String filename, String content) {
		super();
		this.description = description;
		this.filename = filename;
		this.content = content;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getFilename() {
		return filename;
	}


	public void setFilename(String filename) {
		this.filename = filename;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


}