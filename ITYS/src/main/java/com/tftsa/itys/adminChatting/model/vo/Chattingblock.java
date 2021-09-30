package com.tftsa.itys.adminChatting.model.vo;

import java.sql.Timestamp;

public class Chattingblock implements java.io.Serializable { // 채팅 신고 클래스
	private static final long serialVersionUID = 2008L;
	
	private int block_no;
    private String student_name;
    private String tutor_name;
    private java.sql.Timestamp wrtn_datetm;
    private String contents;
    private int user_no;
    private String user_name;
    
	public Chattingblock() {
		super();
	}

	public Chattingblock(int block_no, String student_name, String tutor_name, Timestamp wrtn_datetm, String contents,
			int user_no, String user_name) {
		super();
		this.block_no = block_no;
		this.student_name = student_name;
		this.tutor_name = tutor_name;
		this.wrtn_datetm = wrtn_datetm;
		this.contents = contents;
		this.user_no = user_no;
		this.user_name = user_name;
	}

	public int getBlock_no() {
		return block_no;
	}

	public void setBlock_no(int block_no) {
		this.block_no = block_no;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getTutor_name() {
		return tutor_name;
	}

	public void setTutor_name(String tutor_name) {
		this.tutor_name = tutor_name;
	}

	public java.sql.Timestamp getWrtn_datetm() {
		return wrtn_datetm;
	}

	public void setWrtn_datetm(java.sql.Timestamp wrtn_datetm) {
		this.wrtn_datetm = wrtn_datetm;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Chattingblock [block_no=" + block_no + ", student_name=" + student_name + ", tutor_name=" + tutor_name
				+ ", wrtn_datetm=" + wrtn_datetm + ", contents=" + contents + ", user_no=" + user_no + ", user_name="
				+ user_name + "]";
	}
}
