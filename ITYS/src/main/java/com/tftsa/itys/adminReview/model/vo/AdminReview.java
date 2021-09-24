package com.tftsa.itys.adminReview.model.vo;

/**
 * @author minji
 *
 */
public class AdminReview implements java.io.Serializable {
	private static final long serialVersionUID = 3674L;
	
	private int rev_no;
    private String user_name;
    private String sub_name;
    private String score;
    private String rev_content;
    
	public AdminReview() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getRev_no() {
		return rev_no;
	}

	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getRev_content() {
		return rev_content;
	}

	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "AdminReview [rev_no=" + rev_no + ", user_name=" + user_name + ", sub_name=" + sub_name + ", score="
				+ score + ", rev_content=" + rev_content + "]";
	}
}
