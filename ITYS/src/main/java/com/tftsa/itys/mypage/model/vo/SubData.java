package com.tftsa.itys.mypage.model.vo;

public class SubData implements java.io.Serializable{
	private static final long serialVersionUID = 115L;
	
	private int user_no;
	private int sub_no;
	
	public SubData() {}

	public SubData(int user_no, int sub_no) {
		super();
		this.user_no = user_no;
		this.sub_no = sub_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getSub_no() {
		return sub_no;
	}

	public void setSub_no(int sub_no) {
		this.sub_no = sub_no;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "SubData [user_no=" + user_no + ", sub_no=" + sub_no + "]";
	};
	
	
	
}
