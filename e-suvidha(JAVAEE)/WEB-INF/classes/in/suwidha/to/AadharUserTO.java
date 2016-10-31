package in.suwidha.to;

import java.util.Date;

public class AadharUserTO 
{
	private String name,fname,mname,gender,doorno,city,mandal,district,email;
	private int enm,pincode;
	private long mobile;
	private Date date,dob;
	public AadharUserTO(Date date,int enm,String name,String fname,String mname,Date dob,String gender,String doorno,
			String city,String mandal,String district,int pincode,long mobile,String email)
	{
		this.date=date;
		this.enm=enm;
		this.name=name;
		this.fname=fname;
		this.mname=mname;
		this.dob=dob;
		this.gender=gender;
		this.doorno=doorno;
		this.city=city;
		this.mandal=mandal;
		this.district=district;
		this.pincode=pincode;
		this.mobile=mobile;
		this.email=email;
	}


	public int getEnm() {
		return enm;
	}


	public void setEnm(int enm) {
		this.enm = enm;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
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


	public int getPincode() {
		return pincode;
	}


	public void setPincode(int pincode) {
		this.pincode = pincode;
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


	public Date getDob() {
		return dob;
	}


	public void setDob(Date dob) {
		this.dob = dob;
	}
}
