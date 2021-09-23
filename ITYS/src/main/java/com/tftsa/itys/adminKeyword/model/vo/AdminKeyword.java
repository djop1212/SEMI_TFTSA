package com.tftsa.itys.adminKeyword.model.vo;

public class AdminKeyword implements java.io.Serializable {
	private static final long serialVersionUID = 3523L;
	
	private int key_no;
	private String type_per;
	
	public AdminKeyword() {}

	public AdminKeyword(int key_no, String type_per) {
		super();
		this.key_no = key_no;
		this.type_per = type_per;
	}

	public int getKey_no() {
		return key_no;
	}

	public void setKey_no(int key_no) {
		this.key_no = key_no;
	}

	public String getType_per() {
		return type_per;
	}

	public void setType_per(String type_per) {
		this.type_per = type_per;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Keyword [key_no=" + key_no + ", type_per=" + type_per + "]";
	}	
}
