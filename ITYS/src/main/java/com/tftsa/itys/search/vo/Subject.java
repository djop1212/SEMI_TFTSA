package com.tftsa.itys.search.vo;

public class Subject implements java.io.Serializable {
	private static final long serialVersionUID = 5556L;
	
	private int sub_no;
	private String category;
	private String sub_name;
	
	public Subject() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Subject(int sub_no, String category, String sub_name) {
		super();
		this.sub_no = sub_no;
		this.category = category;
		this.sub_name = sub_name;
	}

	public int getSub_no() {
		return sub_no;
	}

	public void setSub_no(int sub_no) {
		this.sub_no = sub_no;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}
