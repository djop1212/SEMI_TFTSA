package com.tftsa.itys.adminDashboard.model.vo;

public class BarData implements java.io.Serializable {
	private static final long serialVersionUID = 2493L;

	private String month;
	private int earning;
	
	public BarData() {}

	public BarData(String month, int earning) {
		super();
		this.month = month;
		this.earning = earning;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int getEarning() {
		return earning;
	}

	public void setEarning(int earning) {
		this.earning = earning;
	}

	@Override
	public String toString() {
		return "BarData [month=" + month + ", earning=" + earning + "]";
	}

	
}
