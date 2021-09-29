package com.tftsa.itys.detail.model.vo;

public class OpenChat implements java.io.Serializable {
	private static final long serialVersionUID = 1004L;
	private int chat_room_no;
	private int student_no;
	private int tutor_no;
	private String student_name;
	private String tutor_name;
	
	public OpenChat() {
		super();
	}

	public OpenChat(int chat_room_no, int student_no, int tutor_no, String student_name, String tutor_name) {
		super();
		this.chat_room_no = chat_room_no;
		this.student_no = student_no;
		this.tutor_no = tutor_no;
		this.student_name = student_name;
		this.tutor_name = tutor_name;
	}

	public int getChat_room_no() {
		return chat_room_no;
	}

	public void setChat_room_no(int chat_room_no) {
		this.chat_room_no = chat_room_no;
	}

	public int getStudent_no() {
		return student_no;
	}

	public void setStudent_no(int student_no) {
		this.student_no = student_no;
	}

	public int getTutor_no() {
		return tutor_no;
	}

	public void setTutor_no(int tutor_no) {
		this.tutor_no = tutor_no;
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
		return "OpenChat [chat_room_no=" + chat_room_no + ", student_no=" + student_no + ", tutor_no=" + tutor_no
				+ ", student_name=" + student_name + ", tutor_name=" + tutor_name + "]";
	}
}

