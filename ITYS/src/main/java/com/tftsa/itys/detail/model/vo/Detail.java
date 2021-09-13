package com.tftsa.itys.detail.model.vo;

import java.sql.Timestamp;

public class Detail {
	private static final long serialVersionUID = 3334L;
	
	private int rev_no;
	private int pay_no;
	private Timestamp rev_datetm;
	private int score; 
	private String rev_content;
	
	public  Detail() {}

	public Detail(int rev_no, int pay_no, Timestamp rev_datetm, int score, String rev_content) {
		super();
		this.rev_no = rev_no;
		this.pay_no = pay_no;
		this.rev_datetm = rev_datetm;
		this.score = score;
		this.rev_content = rev_content;
	}

	public int getRev_no() {
		return rev_no;
	}

	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}

	public int getPay_no() {
		return pay_no;
	}

	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}

	public Timestamp getRev_datetm() {
		return rev_datetm;
	}

	public void setRev_datetm(Timestamp rev_datetm) {
		this.rev_datetm = rev_datetm;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
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
		return "Detail [rev_no=" + rev_no + ", pay_no=" + pay_no + ", rev_datetm=" + rev_datetm + ", score=" + score
				+ ", rev_content=" + rev_content + "]";
	}
	
	
}
