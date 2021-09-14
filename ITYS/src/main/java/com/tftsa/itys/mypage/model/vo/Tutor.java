package com.tftsa.itys.mypage.model.vo;

public class Tutor implements java.io.Serializable{
	private static final long serialVersionUID = 112L;
	
	private int user_no;
	private String pic;
	private String min_pay;
	private String online_ok;
	private String intro;
	private String day;
	private String time;
	private String style;
	private String l_grd;
	
	public Tutor () {}

	public Tutor(int user_no, String pic, String min_pay, String online_ok, String intro, String day, String time,
			String style, String l_grd) {
		super();
		this.user_no = user_no;
		this.pic = pic;
		this.min_pay = min_pay;
		this.online_ok = online_ok;
		this.intro = intro;
		this.day = day;
		this.time = time;
		this.style = style;
		this.l_grd = l_grd;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Tutor [user_no=" + user_no + ", pic=" + pic + ", min_pay=" + min_pay + ", online_ok=" + online_ok
				+ ", intro=" + intro + ", day=" + day + ", time=" + time + ", style=" + style + ", l_grd=" + l_grd
				+ "]";
	}
	
	

}
