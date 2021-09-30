package com.tftsa.itys.adminDashboard.model.vo;

public class PieData implements java.io.Serializable {
	private static final long serialVersionUID = 2493L;

	private String category;
	private int cnt;
	
	public PieData() {}

	public PieData(String category, int cnt) {
		super();
		this.category = category;
		this.cnt = cnt;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "PieData [category=" + category + ", cnt=" + cnt + "]";
	}

	
}
