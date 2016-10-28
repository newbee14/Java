package in.suwidha.to;

import java.util.Date;

public class RTIformUserTO
{
	private String name,family,resident,info,receipt,email,faxaddress;
	private int idno;
	private long mobile;
	Date date;
	
	public RTIformUserTO(int idno,String name,String family,String resident,String info,String receipt,
			Date date,long mobile,String email,String faxaddress)
	{
		this.idno=idno;
		this.name=name;
		this.family=family;
		this.resident=resident;
		this.info=info;
		this.receipt=receipt;
		this.date=date;
		this.mobile=mobile;
		this.email=email;
		this.faxaddress=faxaddress;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFamily() {
		return family;
	}

	public void setFamily(String family) {
		this.family = family;
	}

	public String getResident() {
		return resident;
	}

	public void setResident(String resident) {
		this.resident = resident;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getReceipt() {
		return receipt;
	}

	public void setReceipt(String receipt) {
		this.receipt = receipt;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFaxaddress() {
		return faxaddress;
	}

	public void setFaxaddress(String faxaddress) {
		this.faxaddress = faxaddress;
	}

	public int getIdno() {
		return idno;
	}

	public void setIdno(int idno) {
		this.idno = idno;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
}
