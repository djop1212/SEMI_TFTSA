package com.tftsa.itys.search.vo;

import java.util.ArrayList;

public class Search implements java.io.Serializable {
	private static final long serialVersionUID = 5558L;
	
	private String category;
	private String sub_name;
	private String word;
	public Search() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Search(String category, String sub_name, String word) {
		super();
		this.category = category;
		this.sub_name = sub_name;
		this.word = word;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
	
	
	
	
	
	
}
