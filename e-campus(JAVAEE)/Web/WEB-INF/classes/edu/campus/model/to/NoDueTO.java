package edu.campus.model.to;

public class NoDueTO {
	
	private String username;	
	private boolean teacher;
	private boolean warden;
	private boolean librarian;
	private boolean accountant;
	
	public NoDueTO() {
		super();
	}

	public NoDueTO(String username, boolean teacher, boolean warden,
			boolean librarian, boolean accountant) {
		super();
		this.username = username;
		this.teacher = teacher;
		this.warden = warden;
		this.librarian = librarian;
		this.accountant = accountant;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public boolean isTeacher() {
		return teacher;
	}

	public void setTeacher(boolean teacher) {
		this.teacher = teacher;
	}

	public boolean isWarden() {
		return warden;
	}

	public void setWarden(boolean warden) {
		this.warden = warden;
	}

	public boolean isLibrarian() {
		return librarian;
	}

	public void setLibrarian(boolean librarian) {
		this.librarian = librarian;
	}

	public boolean isAccountant() {
		return accountant;
	}

	public void setAccountant(boolean accountant) {
		this.accountant = accountant;
	}

	
}
