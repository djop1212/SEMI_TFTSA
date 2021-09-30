package com.tftsa.itys.mypage.model.vo;

public class MyStudent implements java.io.Serializable{
	private static final long serialVersionUID = 123L;
	
	private int pay_no;
	private String student_name;
	private String tutor_name;
	private String pay_datetm;
	private String pay_method;
	private String pay_amount;
	private String pay_status;
	private int user_no;
	private String user_ssn;
	private String user_name;
	private String user_phone;
	private String user_email;
	private String user_position;
	private String pic;
	private String stu_job;
	private String day;
	private String time;
	private String stu_wish;
	
	public MyStudent() {}

	

	public MyStudent(int pay_no, String student_name, String tutor_name, String pay_datetm, String pay_method,
			String pay_amount, String pay_status, int user_no, String user_ssn, String user_name, String user_phone,
			String user_email, String user_position, String pic, String stu_job, String day, String time,
			String stu_wish) {
		super();
		this.pay_no = pay_no;
		this.student_name = student_name;
		this.tutor_name = tutor_name;
		this.pay_datetm = pay_datetm;
		this.pay_method = pay_method;
		this.pay_amount = pay_amount;
		this.pay_status = pay_status;
		this.user_no = user_no;
		this.user_ssn = user_ssn;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.user_position = user_position;
		this.pic = pic;
		this.stu_job = stu_job;
		this.day = day;
		this.time = time;
		this.stu_wish = stu_wish;
	}



	public String getStu_job() {
		return stu_job;
	}



	public void setStu_job(String stu_job) {
		this.stu_job = stu_job;
	}



	public int getPay_no() {
		return pay_no;
	}

	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
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

	public String getPay_datetm() {
		return pay_datetm;
	}

	public void setPay_datetm(String pay_datetm) {
		this.pay_datetm = pay_datetm;
	}

	public String getPay_method() {
		return pay_method;
	}

	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}

	public String getPay_amount() {
		return pay_amount;
	}

	public void setPay_amount(String pay_amount) {
		this.pay_amount = pay_amount;
	}

	public String getPay_status() {
		return pay_status;
	}

	public void setPay_status(String pay_status) {
		this.pay_status = pay_status;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
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

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
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
		return "MyStudent [pay_no=" + pay_no + ", student_name=" + student_name + ", tutor_name=" + tutor_name
				+ ", pay_datetm=" + pay_datetm + ", pay_method=" + pay_method + ", pay_amount=" + pay_amount
				+ ", pay_status=" + pay_status + ", user_no=" + user_no + ", user_ssn=" + user_ssn + ", user_name="
				+ user_name + ", user_phone=" + user_phone + ", user_email=" + user_email + ", user_position="
				+ user_position + ", pic=" + pic + ", stu_job=" + stu_job + ", day=" + day + ", time=" + time
				+ ", stu_wish=" + stu_wish + "]";
	}
	
	

}

