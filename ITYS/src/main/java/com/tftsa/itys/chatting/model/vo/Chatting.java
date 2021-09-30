package com.tftsa.itys.chatting.model.vo;

import java.sql.Timestamp;

public class Chatting implements java.io.Serializable { // 채팅 클래스
	private static final long serialVersionUID = 2004L;
	
	private int chat_no;
	private int chat_room_no;
	private java.sql.Timestamp wrtn_datetm;
	private int user_no;
	private String chat_content;
	
	public Chatting() {
		super();
	}

	public Chatting(int chat_no, int chat_room_no, Timestamp wrtn_datetm, int user_no, String chat_content) {
		super();
		this.chat_no = chat_no;
		this.chat_room_no = chat_room_no;
		this.wrtn_datetm = wrtn_datetm;
		this.user_no = user_no;
		this.chat_content = chat_content;
	}

	public int getChat_no() {
		return chat_no;
	}

	public void setChat_no(int chat_no) {
		this.chat_no = chat_no;
	}

	public int getChat_room_no() {
		return chat_room_no;
	}

	public void setChat_room_no(int chat_room_no) {
		this.chat_room_no = chat_room_no;
	}

	public java.sql.Timestamp getWrtn_datetm() {
		return wrtn_datetm;
	}

	public void setWrtn_datetm(java.sql.Timestamp wrtn_datetm) {
		this.wrtn_datetm = wrtn_datetm;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getChat_content() {
		return chat_content;
	}

	public void setChat_content(String chat_content) {
		this.chat_content = chat_content;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Chatting [chat_no=" + chat_no + ", chat_room_no=" + chat_room_no + ", wrtn_datetm=" + wrtn_datetm
				+ ", user_no=" + user_no + ", chat_content=" + chat_content + "]";
	}
}
