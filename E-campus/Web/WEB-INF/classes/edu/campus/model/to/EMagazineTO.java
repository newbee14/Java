package edu.campus.model.to;

public class EMagazineTO {
	private int articleid;
	private String username;
	private String name;
	private String branch;
	private String title;
	private byte []pic;
	private String theme;
	private String completearticle;
	
	
	
	
	public EMagazineTO() {
		super();
	}
	public EMagazineTO(int articleid, String username, String name,
			String branch, String title, byte[] pic, String theme,
			String completearticle) {
		super();
		this.articleid = articleid;
		this.username = username;
		this.name = name;
		this.branch = branch;
		this.title = title;
		this.pic = pic;
		this.theme = theme;
		this.completearticle = completearticle;
	}
	public int getArticleid() {
		return articleid;
	}
	public void setArticleid(int articleid) {
		this.articleid = articleid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public byte[] getPic() {
		return pic;
	}
	public void setPic(byte[] pic) {
		this.pic = pic;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public String getCompletearticle() {
		return completearticle;
	}
	public void setCompletearticle(String completearticle) {
		this.completearticle = completearticle;
	}
	
		
	
}
