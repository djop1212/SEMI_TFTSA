package com.tftsa.itys.search.vo;


public class DetailSearch implements java.io.Serializable {
	
	
	private static final long serialVersionUID = 5560L;

	private int user_no;
	private String[] l_grd_list;
	private String area;
	private String[] keyword_list;
	private String day_str;
	private String db_day_str;
	private String[] db_day_list;
	public DetailSearch() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetailSearch(int user_no, String[] l_grd_list, String area, String[] keyword_list, String day_str,
			String db_day_str, String[] db_day_list) {
		super();
		this.user_no = user_no;
		this.l_grd_list = l_grd_list;
		this.area = area;
		this.keyword_list = keyword_list;
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
	public String[] getL_grd_list() {
		return l_grd_list;
	}
	public void setL_grd_list(String[] l_grd_list) {
		this.l_grd_list = l_grd_list;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String[] getKeyword_list() {
		return keyword_list;
	}
	public void setKeyword_list(String[] keyword_list) {
		this.keyword_list = keyword_list;
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
