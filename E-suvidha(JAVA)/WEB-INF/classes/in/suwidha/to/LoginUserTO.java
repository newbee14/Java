package in.suwidha.to;

import java.util.Date;



public class LoginUserTO 
{
	private String name,username,fathername,password,email,sex,doorno,district,city,mandal,doorno1,district1,city1,mandal1,place,bloodgroup;
	private int age,userid,pincode,pincode1;
	private long contact;
	private Date date;
	
	public LoginUserTO(String username,int userid,String password)
	{
		this.username=username;
		this.userid=userid;
		this.password=password;
	}
	public LoginUserTO(String password)
	{
		this.password=password;
	}
	public LoginUserTO()
	{
		super();
	}
	public LoginUserTO(String name,String username,String fathername,String password,long contact,String email,int age,
					int userid,String sex,String doorno,String doorno1,String city,String city1,String mandal,String mandal1,
					String district,String district1,int pincode,int pincode1,Date date,String place,String bloodgroup)
	{
		
		this.name=name;
		this.username=username;
		this.fathername=fathername;
		this.password=password;
		this.contact=contact;
		this.email=email;
		this.age=age;
		this.userid=userid;
		this.sex=sex;
		this.doorno=doorno;
		this.doorno1=doorno1;
		this.city=city;
		this.city1=city1;
		this.mandal=mandal;
		this.mandal1=mandal1;
		this.district=district;
		this.district1=district1;
		this.pincode=pincode;
		this.pincode1=pincode1;
		this.date=date;
		this.place=place;
		this.bloodgroup=bloodgroup;
	}
	public LoginUserTO(String name,String fathername,long contact,String email,int age,
			String doorno,String doorno1,String city,String city1,String mandal,String mandal1,
			String district,String district1,int pincode,int pincode1,Date date,String place,String bloodgroup,int userid)
	{

		this.name=name;
		this.fathername=fathername;
		this.contact=contact;
		this.email=email;
		this.age=age;
		this.doorno=doorno;
		this.doorno1=doorno1;
		this.city=city;
		this.city1=city1;
		this.mandal=mandal;
		this.mandal1=mandal1;
		this.district=district;
		this.district1=district1;
		this.pincode=pincode;
		this.pincode1=pincode1;
		this.date=date;
		this.place=place;
		this.bloodgroup=bloodgroup;
		this.userid=userid;
	}
	public LoginUserTO(String username,String email,long contact)
	{
		this.username=username;
		this.email=email;
		this.contact=contact;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getContact() {
		return contact;
	}
	public void setContact(long contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid=userid;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getDoorno() {
		return doorno;
	}
	public void setDoorno(String doorno) {
		this.doorno = doorno;
	}
	public String getDoorno1() {
		return doorno1;
	}
	public void setDoorno1(String doorno1) {
		this.doorno1 = doorno1;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCity1() {
		return city1;
	}
	public void setCity1(String city1) {
		this.city1 = city1;
	}
	public String getMandal() {
		return mandal;
	}
	public void setMandal(String mandal) {
		this.mandal = mandal;
	}
	public String getMandal1() {
		return mandal1;
	}
	public void setMandal1(String mandal1) {
		this.mandal1 = mandal1;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getDistrict1() {
		return district1;
	}
	public void setDistrict1(String district1) {
		this.district1 = district1;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public int getPincode1() {
		return pincode1;
	}
	public void setPincode1(int pincode1) {
		this.pincode1 = pincode1;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
}
