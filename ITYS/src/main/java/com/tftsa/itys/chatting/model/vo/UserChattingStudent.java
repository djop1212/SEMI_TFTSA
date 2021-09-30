package com.tftsa.itys.chatting.model.vo;

import java.sql.Timestamp;

public class UserChattingStudent implements java.io.Serializable { // 사용자 채팅 학생 클래스

	private static final long serialVersionUID = 2002L;
	
	private int user_no;
	private String pic;
	private String stu_job;
	private String day;
	private String time;
	private String stu_wish;
	private int chat_no;
	private int chat_room_no;
	private java.sql.Timestamp wrtn_datetm;
	private String chat_content;
	private String user_ssn;
	private String user_name;
	private String user_phone;
	private String user_id;
	private String user_pwd;
	private String user_email;
	private String user_position;
	private String login_ok;
	
	public UserChattingStudent() {
		super();
	}

	public UserChattingStudent(int user_no, String pic, String stu_job, String day, String time, String stu_wish,
			int chat_no, int chat_room_no, Timestamp wrtn_datetm, String chat_content, String user_ssn,
			String user_name, String user_phone, String user_id, String user_pwd, String user_email,
			String user_position, String login_ok) {
		super();
		this.user_no = user_no;
		this.pic = pic;
		this.stu_job = stu_job;
		this.day = day;
		this.time = time;
		this.stu_wish = stu_wish;
		this.chat_no = chat_no;
		this.chat_room_no = chat_room_no;
		this.wrtn_datetm = wrtn_datetm;
		this.chat_content = chat_content;
		this.user_ssn = user_ssn;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_email = user_email;
		this.user_position = user_position;
		this.login_ok = login_ok;
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

	public String getChat_content() {
		return chat_content;
	}

	public void setChat_content(String chat_content) {
		this.chat_content = chat_content;
	}

	public String getUser_ssn() {
		return user_ssn;
	}

	public void setUser_ssn(String user_ssn) {
		this.user_ssn = user_ssn;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_position() {
		return user_position;
	}

	public void setUser_position(String user_position) {
		this.user_position = user_position;
	}

	public String getLogin_ok() {
		return login_ok;
	}

	public void setLogin_ok(String login_ok) {
		this.login_ok = login_ok;
	}

	@Override
	public String toString() {
		return "UserChattingStudent [user_no=" + user_no + ", pic=" + pic + ", stu_job=" + stu_job + ", day=" + day
				+ ", time=" + time + ", stu_wish=" + stu_wish + ", chat_no=" + chat_no + ", chat_room_no="
				+ chat_room_no + ", wrtn_datetm=" + wrtn_datetm + ", chat_content=" + chat_content + ", user_ssn="
				+ user_ssn + ", user_name=" + user_name + ", user_phone=" + user_phone + ", user_id=" + user_id
				+ ", user_pwd=" + user_pwd + ", user_email=" + user_email + ", user_position=" + user_position
				+ ", login_ok=" + login_ok + "]";
	}
}
