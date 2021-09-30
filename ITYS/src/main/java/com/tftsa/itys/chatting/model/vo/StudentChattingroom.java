package com.tftsa.itys.chatting.model.vo;

public class StudentChattingroom implements java.io.Serializable {

	private static final long serialVersionUID = 2010L;
	
	private int chat_room_no;
	private int student_no;
	private int tutor_no;
	private String student_name;
	private String tutor_name;
	private int user_no;
	private String pic;
	private String stu_job;
	private String day;
	private String time;
	private String stu_wish;
	
	public StudentChattingroom() {
		super();
	}

	public StudentChattingroom(int chat_room_no, int student_no, int tutor_no, String student_name, String tutor_name,
			int user_no, String pic, String stu_job, String day, String time, String stu_wish) {
		super();
		this.chat_room_no = chat_room_no;
		this.student_no = student_no;
		this.tutor_no = tutor_no;
		this.student_name = student_name;
		this.tutor_name = tutor_name;
		this.user_no = user_no;
		this.pic = pic;
		this.stu_job = stu_job;
		this.day = day;
		this.time = time;
		this.stu_wish = stu_wish;
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

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getStu_job() {
		return stu_job;
	}

	public void setStu_job(String stu_job) {
		this.stu_job = stu_job;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getStu_wish() {
		return stu_wish;
	}

	public void setStu_wish(String stu_wish) {
		this.stu_wish = stu_wish;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "StudentChattingroom [chat_room_no=" + chat_room_no + ", student_no=" + student_no + ", tutor_no="
				+ tutor_no + ", student_name=" + student_name + ", tutor_name=" + tutor_name + ", user_no=" + user_no
				+ ", pic=" + pic + ", stu_job=" + stu_job + ", day=" + day + ", time=" + time + ", stu_wish=" + stu_wish
				+ "]";
	}
}
