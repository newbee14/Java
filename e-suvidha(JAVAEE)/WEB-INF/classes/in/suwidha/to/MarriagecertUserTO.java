package in.suwidha.to;

import java.util.Date;

public class MarriagecertUserTO
{
	private String name,fathername,mothername,nationality,occupation,resident,bname,bfathername,bmothername,bnationality,
			boccupation,bresident,doorno,city,mandal,district,email;
	private int issueno,pincode;
	private Date date,dob,bdob,mdate;
	
	public MarriagecertUserTO(int issueno,Date date,String name,String fathername,String mothername,Date dob,String 
			nationality,String occupation,String resident,String bname,String bfathername,String bmothername,Date bdob,String 
			bnationality,String boccupation,String bresident,Date mdate,String doorno,String city,String mandal,
			String district,int pincode,String email)
	{
		this.issueno=issueno;				this.date=date;
		this.name=name;						this.fathername=fathername;
		this.mothername=mothername;			this.dob=dob;
		this.nationality=nationality;		this.occupation=occupation;
		this.resident=resident;				this.bname=bname;
		this.bfathername=bfathername;		this.bmothername=bmothername;
		this.bdob=bdob;						this.bnationality=bnationality;
		this.boccupation=boccupation;		this.bresident=bresident;
		this.mdate=mdate;					this.doorno=doorno;
		this.city=city;						this.mandal=mandal;
		this.district=district;				this.pincode=pincode;
		this.email=email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFathername() {
		return fathername;
	}

	public void setFathername(String fathername) {
		this.fathername = fathername;
	}

	public String getMothername() {
		return mothername;
	}

	public void setMothername(String mothername) {
		this.mothername = mothername;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getResident() {
		return resident;
	}

	public void setResident(String resident) {
		this.resident = resident;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBfathername() {
		return bfathername;
	}

	public void setBfathername(String bfathername) {
		this.bfathername = bfathername;
	}

	public String getBmothername() {
		return bmothername;
	}

	public void setBmothername(String bmothername) {
		this.bmothername = bmothername;
	}

	public String getBnationality() {
		return bnationality;
	}

	public void setBnationality(String bnationality) {
		this.bnationality = bnationality;
	}

	public String getBoccupation() {
		return boccupation;
	}

	public void setBoccupation(String boccupation) {
		this.boccupation = boccupation;
	}

	public String getBresident() {
		return bresident;
	}

	public void setBresident(String bresident) {
		this.bresident = bresident;
	}

	public String getDoorno() {
		return doorno;
	}

	public void setDoorno(String doorno) {
		this.doorno = doorno;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getMandal() {
		return mandal;
	}

	public void setMandal(String mandal) {
		this.mandal = mandal;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getIssueno() {
		return issueno;
	}

	public void setIssueno(int issueno) {
		this.issueno = issueno;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Date getBdob() {
		return bdob;
	}

	public void setBdob(Date bdob) {
		this.bdob = bdob;
	}

	public Date getMdate() {
		return mdate;
	}

	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}
}
