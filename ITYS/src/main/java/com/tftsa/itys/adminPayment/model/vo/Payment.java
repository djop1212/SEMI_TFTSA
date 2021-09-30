package com.tftsa.itys.adminPayment.model.vo;

import java.sql.Timestamp;

public class Payment implements java.io.Serializable { // 결제 클래스
	private static final long serialVersionUID = 2005L;
	
	private int pay_no;
	private String student_name;
	private String tutor_name;
	private java.sql.Timestamp pay_datetm;
	private String pay_method;
	private String pay_amount;
	private String pay_status;

	public Payment() {
	}

	public Payment(int pay_no, String student_name, String tutor_name, Timestamp pay_datetm, String pay_method,
			String pay_amount, String pay_status) {
		super();
		this.pay_no = pay_no;
		this.student_name = student_name;
		this.tutor_name = tutor_name;
		this.pay_datetm = pay_datetm;
		this.pay_method = pay_method;
		this.pay_amount = pay_amount;
		this.pay_status = pay_status;
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

	public java.sql.Timestamp getPay_datetm() {
		return pay_datetm;
	}

	public void setPay_datetm(java.sql.Timestamp pay_datetm) {
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Payment [pay_no=" + pay_no + ", student_name=" + student_name + ", tutor_name=" + tutor_name
				+ ", pay_datetm=" + pay_datetm + ", pay_method=" + pay_method + ", pay_amount=" + pay_amount
				+ ", pay_status=" + pay_status + "]";
	}
}
