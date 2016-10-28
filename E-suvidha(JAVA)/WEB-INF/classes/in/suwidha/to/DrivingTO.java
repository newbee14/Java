package in.suwidha.to;

import java.util.Date;

public class DrivingTO 
{
	private int lic_no;
	private Date lic_dt;
	private String lic_la,motor1,spother,nm,sd,gn,doorno,doorno_temp,village,village_temp,mandal,mandal_temp,district,
					district_temp;
	private int pin,pin_temp;
	private Date dateob;
	private String edu,idmarks1,idmarks2,bg,endorsed,dis_reason,cer_no;
	private Date cer_dt;
	private String issuedby,r1,r2,r3,r4,r5;
	
	public DrivingTO(int lic_no, Date lic_dt, String lic_la, String motor1,
					String spother, String nm, String sd, String gn, String doorno,
					String doorno_temp, String village, String village_temp,
					String mandal, String mandal_temp, String district,
					String district_temp, int pin, int pin_temp, Date dateob,
					String edu, String idmarks1, String idmarks2, String bg,
					String endorsed, String dis_reason, String cer_no, Date cer_dt,
					String issuedby, String r1, String r2, String r3, String r4,
					String r5) 
	{
		
		this.lic_no = lic_no;
		this.lic_dt = lic_dt;
		this.lic_la = lic_la;
		this.motor1 = motor1;
		this.spother = spother;
		this.nm = nm;
		this.sd = sd;
		this.gn = gn;
		this.doorno = doorno;
		this.doorno_temp = doorno_temp;
		this.village = village;
		this.village_temp = village_temp;
		this.mandal = mandal;
		this.mandal_temp = mandal_temp;
		this.district = district;
		this.district_temp = district_temp;
		this.pin = pin;
		this.pin_temp = pin_temp;
		this.dateob = dateob;
		this.edu = edu;
		this.idmarks1 = idmarks1;
		this.idmarks2 = idmarks2;
		this.bg = bg;
		this.endorsed = endorsed;
		this.dis_reason = dis_reason;
		this.cer_no = cer_no;
		this.cer_dt = cer_dt;
		this.issuedby = issuedby;
		this.r1 = r1;
		this.r2 = r2;
		this.r3 = r3;
		this.r4 = r4;
		this.r5 = r5;
	}
	public String getLic_la() {
		return lic_la;
	}
	public void setLic_la(String lic_la) {
		this.lic_la = lic_la;
	}
	public String getMotor1() {
		return motor1;
	}
	public void setMotor1(String motor1) {
		this.motor1 = motor1;
	}
	public String getSpother() {
		return spother;
	}
	public void setSpother(String spother) {
		this.spother = spother;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public String getSd() {
		return sd;
	}
	public void setSd(String sd) {
		this.sd = sd;
	}
	public String getGn() {
		return gn;
	}
	public void setGn(String gn) {
		this.gn = gn;
	}
	public String getDoorno() {
		return doorno;
	}
	public void setDoorno(String doorno) {
		this.doorno = doorno;
	}
	public String getDoorno_temp() {
		return doorno_temp;
	}
	public void setDoorno_temp(String doorno_temp) {
		this.doorno_temp = doorno_temp;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
	public String getVillage_temp() {
		return village_temp;
	}
	public void setVillage_temp(String village_temp) {
		this.village_temp = village_temp;
	}
	public String getMandal() {
		return mandal;
	}
	public void setMandal(String mandal) {
		this.mandal = mandal;
	}
	public String getMandal_temp() {
		return mandal_temp;
	}
	public void setMandal_temp(String mandal_temp) {
		this.mandal_temp = mandal_temp;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getDistrict_temp() {
		return district_temp;
	}
	public void setDistrict_temp(String district_temp) {
		this.district_temp = district_temp;
	}
	public String getEdu() {
		return edu;
	}
	public void setEdu(String edu) {
		this.edu = edu;
	}
	public String getIdmarks1() {
		return idmarks1;
	}
	public void setIdmarks1(String idmarks1) {
		this.idmarks1 = idmarks1;
	}
	public String getIdmarks2() {
		return idmarks2;
	}
	public void setIdmarks2(String idmarks2) {
		this.idmarks2 = idmarks2;
	}
	public String getBg() {
		return bg;
	}
	public void setBg(String bg) {
		this.bg = bg;
	}
	public String getEndorsed() {
		return endorsed;
	}
	public void setEndorsed(String endorsed) {
		this.endorsed = endorsed;
	}
	public String getDis_reason() {
		return dis_reason;
	}
	public void setDis_reason(String dis_reason) {
		this.dis_reason = dis_reason;
	}
	public String getCer_no() {
		return cer_no;
	}
	public void setCer_no(String cer_no) {
		this.cer_no = cer_no;
	}
	public String getIssuedby() {
		return issuedby;
	}
	public void setIssuedby(String issuedby) {
		this.issuedby = issuedby;
	}
	public String getR1() {
		return r1;
	}
	public void setR1(String r1) {
		this.r1 = r1;
	}
	public String getR2() {
		return r2;
	}
	public void setR2(String r2) {
		this.r2 = r2;
	}
	public String getR3() {
		return r3;
	}
	public void setR3(String r3) {
		this.r3 = r3;
	}
	public String getR4() {
		return r4;
	}
	public void setR4(String r4) {
		this.r4 = r4;
	}
	public String getR5() {
		return r5;
	}
	public void setR5(String r5) {
		this.r5 = r5;
	}
	public int getLic_no() {
		return lic_no;
	}
	public void setLic_no(int lic_no) {
		this.lic_no = lic_no;
	}
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	public int getPin_temp() {
		return pin_temp;
	}
	public void setPin_temp(int pin_temp) {
		this.pin_temp = pin_temp;
	}
	public Date getLic_dt() {
		return lic_dt;
	}
	public void setLic_dt(Date lic_dt) {
		this.lic_dt = lic_dt;
	}
	public Date getCer_dt() {
		return cer_dt;
	}
	public void setCer_dt(Date cer_dt) {
		this.cer_dt = cer_dt;
	}
	public Date getDateob() {
		return dateob;
	}
	public void setDateob(Date dateob) {
		this.dateob = dateob;
	}
	
	
    	
}
