package com.tftsa.itys.search.vo;

public class User_info implements java.io.Serializable {
	private static final long serialVersionUID = 5559L;
	
	private int user_no;
	private String User_ssn;
	private String user_name;
	private String  user_phone;
	private String user_id;
	private String user_pwd;
	private String user_email;
	private String user_position;
	private String login_ok;
	public User_info(int user_no, String user_ssn, String user_name, String user_phone, String user_id, String user_pwd,
			String user_email, String user_position, String login_ok) {
		super();
		this.user_no = user_no;
		User_ssn = user_ssn;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_email = user_email;
		this.user_position = user_position;
		this.login_ok = login_ok;
	}
	public User_info() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_ssn() {
		return User_ssn;
	}
	public void setUser_ssn(String user_ssn) {
		User_ssn = user_ssn;
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
	
	
	
	}
