package com.tftsa.itys.mypage.model.vo;

public class Student implements java.io.Serializable{
	private static final long serialVersionUID = 113L;
	
	private int user_no;
	private String pic;
	private String stu_job;
	private String day;
	private String time;
	private String stu_wish;
	//private String original_filename;
	
	public Student() {}

	public Student(int user_no, String pic, String stu_job, String day, String time, String stu_wish,
			String original_filename) {
		super();
		this.user_no = user_no;
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
		return "Student [user_no=" + user_no + ", pic=" + pic + ", stu_job=" + stu_job + ", day=" + day + ", time="
				+ time + ", stu_wish=" + stu_wish + "]";
	}
	
	

}
