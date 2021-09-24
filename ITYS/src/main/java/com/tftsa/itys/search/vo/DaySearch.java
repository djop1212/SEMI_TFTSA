package com.tftsa.itys.search.vo;


public class DaySearch implements java.io.Serializable {
	
	
	private static final long serialVersionUID = 5559L;

	private int user_no;
	private String day_str;
	private String db_day_str;
	private String[] db_day_list;
	public DaySearch() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DaySearch(int user_no, String day_str, String db_day_str, String[] db_day_list) {
		super();
		this.user_no = user_no;
		this.day_str = day_str;
		this.db_day_str = db_day_str;
		this.db_day_list = db_day_list;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getDay_str() {
		return day_str;
	}
	public void setDay_str(String day_str) {
		this.day_str = day_str;
	}
	public String getDb_day_str() {
		return db_day_str;
	}
	public void setDb_day_str(String db_day_str) {
		this.db_day_str = db_day_str;
	}
	public String[] getDb_day_list() {
		return db_day_list;
	}
	public void setDb_day_list(String[] db_day_list) {
		this.db_day_list = db_day_list;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
