package com.tftsa.itys.chatting.model.vo;

import java.sql.Timestamp;

public class UserChattingTutor implements java.io.Serializable { // 사용자 채팅 선생님 클래스
	private static final long serialVersionUID = 2001L;
	
	private int user_no;
	private String pic;
	private String min_pay;
	private String online_ok;
	private String area;
	private String intro;
	private String day;
	private String time;
	private String style;
	private String l_grd;
	private String class_min;
	private String class_times;
	private String sub_name;
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
	
	public UserChattingTutor() {
		super();
	}

	public UserChattingTutor(int user_no, String pic, String min_pay, String online_ok, String area, String intro,
			String day, String time, String style, String l_grd, String class_min, String class_times, String sub_name,
			int chat_no, int chat_room_no, Timestamp wrtn_datetm, String chat_content, String user_ssn,
			String user_name, String user_phone, String user_id, String user_pwd, String user_email,
			String user_position, String login_ok) {
		super();
		this.user_no = user_no;
		this.pic = pic;
		this.min_pay = min_pay;
		this.online_ok = online_ok;
		this.area = area;
		this.intro = intro;
		this.day = day;
		this.time = time;
		this.style = style;
		this.l_grd = l_grd;
		this.class_min = class_min;
		this.class_times = class_times;
		this.sub_name = sub_name;
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

	public String getMin_pay() {
		return min_pay;
	}

	public void setMin_pay(String min_pay) {
		this.min_pay = min_pay;
	}

	public String getOnline_ok() {
		return online_ok;
	}

	public void setOnline_ok(String online_ok) {
		this.online_ok = online_ok;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
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

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getL_grd() {
		return l_grd;
	}

	public void setL_grd(String l_grd) {
		this.l_grd = l_grd;
	}

	public String getClass_min() {
		return class_min;
	}

	public void setClass_min(String class_min) {
		this.class_min = class_min;
	}

	public String getClass_times() {
		return class_times;
	}

	public void setClass_times(String class_times) {
		this.class_times = class_times;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "UserChattingTutor [user_no=" + user_no + ", pic=" + pic + ", min_pay=" + min_pay + ", online_ok="
				+ online_ok + ", area=" + area + ", intro=" + intro + ", day=" + day + ", time=" + time + ", style="
				+ style + ", l_grd=" + l_grd + ", class_min=" + class_min + ", class_times=" + class_times
				+ ", sub_name=" + sub_name + ", chat_no=" + chat_no + ", chat_room_no=" + chat_room_no
				+ ", wrtn_datetm=" + wrtn_datetm + ", chat_content=" + chat_content + ", user_ssn=" + user_ssn
				+ ", user_name=" + user_name + ", user_phone=" + user_phone + ", user_id=" + user_id + ", user_pwd="
				+ user_pwd + ", user_email=" + user_email + ", user_position=" + user_position + ", login_ok="
				+ login_ok + "]";
	}
}
