package com.tftsa.itys.mypage.model.vo;

public class MyKeyData implements java.io.Serializable{
	private static final long serialVersionUID = 778L;
	
	private int user_no;
	private int key_no;
	
	public MyKeyData() {}

	public MyKeyData(int user_no, int key_no) {
		super();
		this.user_no = user_no;
		this.key_no = key_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getKey_no() {
		return key_no;
	}

	public void setKey_no(int key_no) {
		this.key_no = key_no;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MyKeyData [user_no=" + user_no + ", key_no=" + key_no + "]";
	}
	
	
}
