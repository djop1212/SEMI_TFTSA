package com.tftsa.itys.detail.model.vo;

public class AfterPay {
       private int pay_no;
       private String student_name;
       private String tutor_name;
       
       public AfterPay() {}

	public AfterPay(int pay_no, String student_name, String tutor_name) {
		super();
		this.pay_no = pay_no;
		this.student_name = student_name;
		this.tutor_name = tutor_name;
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

       
}
