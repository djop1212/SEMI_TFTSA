package com.tftsa.itys.detail.model.vo;

public class RoomNo  implements java.io.Serializable {
	private static final long serialVersionUID = 1504L;
	private int student_no;
	private int tutor_no;
	private int chat_room_no;
	
	public RoomNo() {}

	public RoomNo(int student_no, int tutor_no, int chat_room_no) {
		super();
		this.student_no = student_no;
		this.tutor_no = tutor_no;
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

	public int getChat_room_no() {
		return chat_room_no;
	}

	public void setChat_room_no(int chat_room_no) {
		this.chat_room_no = chat_room_no;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}