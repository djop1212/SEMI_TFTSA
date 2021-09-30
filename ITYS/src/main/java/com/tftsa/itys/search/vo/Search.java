package com.tftsa.itys.search.vo;

import java.util.ArrayList;

public class Search implements java.io.Serializable {
	private static final long serialVersionUID = 5558L;

	private String category;
	private String sub_name;
	private String word;
	private int startRow;
	private int endRow;
	public Search() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Search(String category, String sub_name, String word, int startRow, int endRow) {
		super();
		this.category = category;
		this.sub_name = sub_name;
		this.word = word;
		this.startRow = startRow;
		this.endRow = endRow;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSub_name() {
		return sub_name;
	}
	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
