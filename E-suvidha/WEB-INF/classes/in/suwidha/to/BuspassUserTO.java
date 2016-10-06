package in.suwidha.to;

import java.util.Date;

public class BuspassUserTO 
{
	private String type,type1,firstname,lastname,doorno,city,mandal,district,disability,radio1,radio2,radio3,radio4,radio5,
				   radio6,radio7,radio8,radio9,radio10,radio11,radio12,doctorname,email;
	private int pincode,tokenno;
	private long mobile;
	private Date dob;

	public BuspassUserTO(String type,String type1,String firstname,String lastname,String doorno,String city,String mandal,
			String district,int pincode,Date dob,String disability,String radio1,String radio2,String radio3,String radio4,
			String radio5,String radio6,String radio7,String radio8,String radio9,String radio10,String radio11,String radio12,
			String doctorname,long mobile,String email,int tokenno)
	{
		this.type=type;
		this.type1=type1;
		this.firstname=firstname;
		this.lastname=lastname;
		this.doorno=doorno;
		this.city=city;
		this.mandal=mandal;
		this.district=district;
		this.pincode=pincode;
		this.dob=dob;
		this.disability=disability;
		this.radio1=radio1;
		this.radio2=radio2;
		this.radio3=radio3;
		this.radio4=radio4;
		this.radio5=radio5;
		this.radio6=radio6;
		this.radio7=radio7;
		this.radio8=radio8;
		this.radio9=radio9;
		this.radio10=radio10;
		this.radio11=radio11;
		this.radio12=radio12;
		this.doctorname=doctorname;
		this.mobile=mobile;
		this.email=email;
		this.tokenno=tokenno;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getType1() {
		return type1;
	}

	public void setType1(String type1) {
		this.type1 = type1;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
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

	public String getDisability() {
		return disability;
	}

	public void setDisability(String disability) {
		this.disability = disability;
	}

	public String getRadio1() {
		return radio1;
	}

	public void setRadio1(String radio1) {
		this.radio1 = radio1;
	}

	public String getRadio2() {
		return radio2;
	}

	public void setRadio2(String radio2) {
		this.radio2 = radio2;
	}

	public String getRadio3() {
		return radio3;
	}

	public void setRadio3(String radio3) {
		this.radio3 = radio3;
	}

	public String getRadio4() {
		return radio4;
	}

	public void setRadio4(String radio4) {
		this.radio4 = radio4;
	}

	public String getRadio5() {
		return radio5;
	}

	public void setRadio5(String radio5) {
		this.radio5 = radio5;
	}

	public String getRadio6() {
		return radio6;
	}

	public void setRadio6(String radio6) {
		this.radio6 = radio6;
	}

	public String getRadio7() {
		return radio7;
	}

	public void setRadio7(String radio7) {
		this.radio7 = radio7;
	}

	public String getRadio8() {
		return radio8;
	}

	public void setRadio8(String radio8) {
		this.radio8 = radio8;
	}

	public String getRadio9() {
		return radio9;
	}

	public void setRadio9(String radio9) {
		this.radio9 = radio9;
	}

	public String getRadio10() {
		return radio10;
	}

	public void setRadio10(String radio10) {
		this.radio10 = radio10;
	}

	public String getRadio11() {
		return radio11;
	}

	public void setRadio11(String radio11) {
		this.radio11 = radio11;
	}

	public String getRadio12() {
		return radio12;
	}

	public void setRadio12(String radio12) {
		this.radio12 = radio12;
	}

	public String getDoctorname() {
		return doctorname;
	}

	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
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

	public int getTokenno() {
		return tokenno;
	}

	public void setTokenno(int tokenno) {
		this.tokenno = tokenno;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}
}
