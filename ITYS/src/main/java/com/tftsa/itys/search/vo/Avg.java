package com.tftsa.itys.search.vo;

public class Avg implements java.io.Serializable {
	
	
	private static final long serialVersionUID = 5561L; 
	private String user_no;
	private Double avg;
	public Avg() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Avg(String user_no, Double avg) {
		super();
		this.user_no = user_no;
		this.avg = avg;
	}
	public String getUser_no() {
		return user_no;
	}
	public void setUser_no(String user_no) {
		this.user_no = user_no;
	}
	public Double getAvg() {
		return avg;
	}
	public void setAvg(Double avg) {
		this.avg = avg;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
	
}
