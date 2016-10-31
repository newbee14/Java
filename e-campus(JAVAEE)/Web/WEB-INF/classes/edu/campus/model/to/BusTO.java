package edu.campus.model.to;

public class BusTO {
	private  String routeno;
	private  String busno;
	private  String from;
	private  String to;
	private  String drivername;
	private  Long drivercontactno;
	private  String conductorname;
	private  Long conductorcontactno;
	private int seats;
	public BusTO() {
		super();
	}
	public BusTO(String routeno, String busno, String from, String to,
			String drivername, Long drivercontactno, String conductorname,
			Long conductorcontactno, int seats) {
		super();
		this.routeno = routeno;
		this.busno = busno;
		this.from = from;
		this.to = to;
		this.drivername = drivername;
		this.drivercontactno = drivercontactno;
		this.conductorname = conductorname;
		this.conductorcontactno = conductorcontactno;
		this.seats = seats;
	}
	public String getRouteno() {
		return routeno;
	}
	public void setRouteno(String routeno) {
		this.routeno = routeno;
	}
	public String getBusno() {
		return busno;
	}
	public void setBusno(String busno) {
		this.busno = busno;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getDrivername() {
		return drivername;
	}
	public void setDrivername(String drivername) {
		this.drivername = drivername;
	}
	public Long getDrivercontactno() {
		return drivercontactno;
	}
	public void setDrivercontactno(Long drivercontactno) {
		this.drivercontactno = drivercontactno;
	}
	public String getConductorname() {
		return conductorname;
	}
	public void setConductorname(String conductorname) {
		this.conductorname = conductorname;
	}
	public Long getConductorcontactno() {
		return conductorcontactno;
	}
	public void setConductorcontactno(Long conductorcontactno) {
		this.conductorcontactno = conductorcontactno;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	

}
