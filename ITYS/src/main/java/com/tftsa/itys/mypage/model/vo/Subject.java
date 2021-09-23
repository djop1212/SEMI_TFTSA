package com.tftsa.itys.mypage.model.vo;

public class Subject implements java.io.Serializable{

	private static final long serialVersionUID = 116L;
	
	private int sub_no;
	private String category;
	private String sub_name;
	
	public Subject() {}

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

	@Override
	public String toString() {
		return "Subject [sub_no=" + sub_no + ", category=" + category + ", sub_name=" + sub_name + "]";
	}
	
	

}
