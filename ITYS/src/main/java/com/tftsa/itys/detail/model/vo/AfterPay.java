package com.tftsa.itys.detail.model.vo;

public class AfterPay {
       private int pay_no;
       private String user_name;
       
       public AfterPay() {}

	public AfterPay(int pay_no, String user_name) {
		super();
		this.pay_no = pay_no;
		this.user_name = user_name;
	}

	public int getPay_no() {
		return pay_no;
	}

	public void setPay_no(int pay_no) {
		this.pay_no = pay_no;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
       
       
}
