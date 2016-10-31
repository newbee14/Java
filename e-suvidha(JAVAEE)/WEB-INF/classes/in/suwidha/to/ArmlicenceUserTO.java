package in.suwidha.to;



public class ArmlicenceUserTO 
{
	private String name,fathername,place,nationality,address,police,email,occupation,radio1,radio2,radio3,radio4,radio5,
					radio6,radio7,detail,type,need,claim;
	private int licenceno;
	private long mobile;
	
	public ArmlicenceUserTO(String name,String fathername,String place,String nationality,String address,String police,
							long mobile,String email,String occupation,int licenceno,String radio1,String radio2,String radio3,
							String radio4,String radio5,String radio6,String radio7,String detail,String type,String need,
							String claim)
	{
		this.name=name;
		this.fathername=fathername;
		this.place=place;
		this.nationality=nationality;
		this.address=address;
		this.police=police;
		this.mobile=mobile;
		this.email=email;
		this.occupation=occupation;
		this.licenceno=licenceno;
		this.radio1=radio1;
		this.radio2=radio2;
		this.radio3=radio3;
		this.radio4=radio4;
		this.radio5=radio5;
		this.radio6=radio6;
		this.radio7=radio7;
		this.detail=detail;
		this.type=type;
		this.need=need;
		this.claim=claim;
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

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPolice() {
		return police;
	}

	public void setPolice(String police) {
		this.police = police;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
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

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getNeed() {
		return need;
	}

	public void setNeed(String need) {
		this.need = need;
	}

	public String getClaim() {
		return claim;
	}

	public void setClaim(String claim) {
		this.claim = claim;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public int getLicenceno() {
		return licenceno;
	}

	public void setLicenceno(int licenceno) {
		this.licenceno = licenceno;
	}
	
}
