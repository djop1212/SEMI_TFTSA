package com.tftsa.itys.mypage.model.vo;

public class UserChattingroomStudent implements java.io.Serializable {

	private static final long serialVersionUID = 998L;

	private int user_no;
	private int chat_room_no;
	private int student_no;
	private int tutor_no;
	private String student_name;
	private String tutor_name;
	private String user_ssn;
	private String user_name;
	private String user_phone;
	private String user_id;
	private String user_pwd;
	private String user_email;
	private String user_position;
	private String login_ok;
	private String pic;
	private String stu_job;
	private String day;
	private String time;
	private String stu_wish;
	
	public UserChattingroomStudent() {
		super();
	}

	public UserChattingroomStudent(int user_no, int chat_room_no, int student_no, int tutor_no, String student_name,
			String tutor_name, String user_ssn, String user_name, String user_phone, String user_id, String user_pwd,
			String user_email, String user_position, String login_ok, String pic, String stu_job, String day,
			String time, String stu_wish) {
		super();
		this.user_no = user_no;
		this.chat_room_no = chat_room_no;
		this.student_no = student_no;
		this.tutor_no = tutor_no;
		this.student_name = student_name;
		this.tutor_name = tutor_name;
		this.user_ssn = user_ssn;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_email = user_email;
		this.user_position = user_position;
		this.login_ok = login_ok;
		this.pic = pic;
		this.stu_job = stu_job;
		this.day = day;
		this.time = time;
		this.stu_wish = stu_wish;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
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
		return "UserChattingroomStudent [user_no=" + user_no + ", chat_room_no=" + chat_room_no + ", student_no="
				+ student_no + ", tutor_no=" + tutor_no + ", student_name=" + student_name + ", tutor_name="
				+ tutor_name + ", user_ssn=" + user_ssn + ", user_name=" + user_name + ", user_phone=" + user_phone
				+ ", user_id=" + user_id + ", user_pwd=" + user_pwd + ", user_email=" + user_email + ", user_position="
				+ user_position + ", login_ok=" + login_ok + ", pic=" + pic + ", stu_job=" + stu_job + ", day=" + day
				+ ", time=" + time + ", stu_wish=" + stu_wish + "]";
	}
}
