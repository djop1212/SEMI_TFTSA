package com.tftsa.itys.chatting.model.vo;

public class Chattingroom implements java.io.Serializable {
	private static final long serialVersionUID = 2004L;
	
	private int chat_room_no;
	private String student_name;
	private String tutor_name;
	
	public Chattingroom() {
		super();
	}

	public Chattingroom(int chat_room_no, String student_name, String tutor_name) {
		super();
		this.chat_room_no = chat_room_no;
		this.student_name = student_name;
		this.tutor_name = tutor_name;
	}

	public int getChat_room_no() {
		return chat_room_no;
	}

	public void setChat_room_no(int chat_room_no) {
		this.chat_room_no = chat_room_no;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Chattingroom [chat_room_no=" + chat_room_no + ", student_name=" + student_name + ", tutor_name="
				+ tutor_name + "]";
	}
}
