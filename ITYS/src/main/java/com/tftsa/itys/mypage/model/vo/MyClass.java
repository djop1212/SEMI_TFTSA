package com.tftsa.itys.mypage.model.vo;

public class MyClass implements java.io.Serializable{
	private static final long serialVersionUID = 118L;
	
	private int pay_no;
	private String student_name;
	private String tutor_name;
	private String pay_datetm;
	private String pay_method;
	private String pay_amount;
	private String pay_status;
	private int user_no;
	private String user_name;
	private String user_phone;
	private String user_email;
	private String user_position;
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
	
	public MyClass () {}

	public MyClass(int pay_no, String student_name, String tutor_name, String pay_datetm, String pay_method,
			String pay_amount, String pay_status, int user_no, String user_name, String user_phone,
			String user_email, String user_position, String pic, String min_pay, String online_ok, String area,
			String intro, String day, String time, String style, String l_grd, String class_min, String class_times,
			String sub_name) {
		super();
		this.pay_no = pay_no;
		this.student_name = student_name;
		this.tutor_name = tutor_name;
		this.pay_datetm = pay_datetm;
		this.pay_method = pay_method;
		this.pay_amount = pay_amount;
		this.pay_status = pay_status;
		this.user_no = user_no;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.user_position = user_position;
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

	public String getClass_time() {
		return class_times;
	}

	public void setClass_time(String class_times) {
		this.class_times = class_times;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "MyClass [pay_no=" + pay_no + ", student_name=" + student_name + ", tutor_name=" + tutor_name
				+ ", pay_datetm=" + pay_datetm + ", pay_method=" + pay_method + ", pay_amount=" + pay_amount
				+ ", pay_status=" + pay_status + ", user_no=" + user_no + ", user_name=" + user_name + ", user_phone="
				+ user_phone + ", user_email=" + user_email + ", user_position=" + user_position + ", pic=" + pic
				+ ", min_pay=" + min_pay + ", online_ok=" + online_ok + ", area=" + area + ", intro=" + intro + ", day="
				+ day + ", time=" + time + ", style=" + style + ", l_grd=" + l_grd + ", class_min=" + class_min
				+ ", class_times=" + class_times + ", sub_name=" + sub_name + "]";
	}

	

}
