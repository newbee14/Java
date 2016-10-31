package in.suwidha.to;

import java.util.Date;

public class VotercardUserTO 
{
	private String name,surname,fname,mname,gender,place,doorno,street,postoffice,tehsil,city,district,name1,relation1,
					part1,cardno1,name2,relation2,part2,cardno2;
	private int pincode,voterno;
	private long mobile1,mobile2;
	private Date dob,date;
	public VotercardUserTO(String name,String surname,String fname,String mname,Date dob,String gender,String place,String 
			doorno,String street,String postoffice,String tehsil,int pincode,String city,String district,int voterno,
			String name1,String relation1,String part1,String cardno1,long mobile1,String name2,String relation2,
			String part2,String cardno2,long mobile2,Date date)
	{
		this.name=name;
		this.surname=surname;
		this.fname=fname;
		this.mname=mname;
		this.dob=dob;
		this.gender=gender;
		this.place=place;
		this.doorno=doorno;
		this.street=street;
		this.postoffice=postoffice;
		this.tehsil=tehsil;
		this.pincode=pincode;
		this.city=city;
		this.district=district;
		this.voterno=voterno;
		this.name1=name1;
		this.relation1=relation1;
		this.part1=part1;
		this.cardno1=cardno1;
		this.mobile1=mobile1;
		this.name2=name2;
		this.relation2=relation2;
		this.part2=part2;
		this.cardno2=cardno2;
		this.mobile2=mobile2;
		this.date=date;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
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
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getDoorno() {
		return doorno;
	}
	public void setDoorno(String doorno) {
		this.doorno = doorno;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getPostoffice() {
		return postoffice;
	}
	public void setPostoffice(String postoffice) {
		this.postoffice = postoffice;
	}
	public String getTehsil() {
		return tehsil;
	}
	public void setTehsil(String tehsil) {
		this.tehsil = tehsil;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getRelation1() {
		return relation1;
	}
	public void setRelation1(String relation1) {
		this.relation1 = relation1;
	}
	public String getPart1() {
		return part1;
	}
	public void setPart1(String part1) {
		this.part1 = part1;
	}
	public String getCardno1() {
		return cardno1;
	}
	public void setCardno1(String cardno1) {
		this.cardno1 = cardno1;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public String getRelation2() {
		return relation2;
	}
	public void setRelation2(String relation2) {
		this.relation2 = relation2;
	}
	public String getPart2() {
		return part2;
	}
	public void setPart2(String part2) {
		this.part2 = part2;
	}
	public String getCardno2() {
		return cardno2;
	}
	public void setCardno2(String cardno2) {
		this.cardno2 = cardno2;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public int getVoterno() {
		return voterno;
	}
	public void setVoterno(int voterno) {
		this.voterno = voterno;
	}
	public long getMobile1() {
		return mobile1;
	}
	public void setMobile1(long mobile1) {
		this.mobile1 = mobile1;
	}
	public long getMobile2() {
		return mobile2;
	}
	public void setMobile2(long mobile2) {
		this.mobile2 = mobile2;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}
