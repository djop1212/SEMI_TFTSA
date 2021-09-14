package com.tftsa.itys.adminMember.model.vo;

//컨트롤러 클래스의 메소드에서 매개변수로 command 객체를 이용하려면,
//database table column 명 == vo field명 == form input 태그 name
/**
 * @author minji
 *
 */
public class Member implements java.io.Serializable {
	private static final long serialVersionUID = 114L;
	
	private char user_position;
	private int user_no;
	private String user_id;
	private String user_name;
	private String user_ssn;
	private String user_phone;
	private String user_email;
	private char login_ok;

	public Member(char user_position, int user_no, String user_id, String user_name, String user_ssn, String user_phone,
			String user_email, char login_ok) {
		super();
		this.user_position = user_position;
		this.user_no = user_no;
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_ssn = user_ssn;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.login_ok = login_ok;
	}

	public char getUser_position() {
		return user_position;
	}

	public void setUser_position(char user_position) {
		this.user_position = user_position;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_ssn() {
		return user_ssn;
	}

	public void setUser_ssn(String user_ssn) {
		this.user_ssn = user_ssn;
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

	public char getLogin_ok() {
		return login_ok;
	}

	public void setLogin_ok(char login_ok) {
		this.login_ok = login_ok;
	}

	@Override
	public String toString() {
		return "Member [user_position=" + user_position + ", user_no=" + user_no + ", user_id=" + user_id
				+ ", user_name=" + user_name + ", user_ssn=" + user_ssn + ", user_phone=" + user_phone + ", user_email="
				+ user_email + ", login_ok=" + login_ok + "]";
	}
}
