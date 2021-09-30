package com.tftsa.itys.search.vo;


public class DetailSearch implements java.io.Serializable {
	
	
	private static final long serialVersionUID = 5560L;

	private int user_no;
	
	private String category;
	private String sub_name;
	private String word;
	
	private String[] l_grd_list;
	private String area;
	private String[] keyword_list;
	private String[] day_list;
	private String day_str;
	private String db_day_str;
	private String[] db_day_list;
	private String stime;
	private String etime;
	private String price;
	private String[] online_ok_list;
	private String min_price;
	private String max_price;
	
	private int startRow;
	private int endRow;
	public DetailSearch() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetailSearch(int user_no, String category, String sub_name, String word, String[] l_grd_list, String area,
			String[] keyword_list, String[] day_list, String day_str, String db_day_str, String[] db_day_list,
			String stime, String etime, String price, String[] online_ok_list, String min_price, String max_price,
			int startRow, int endRow) {
		super();
		this.user_no = user_no;
		this.category = category;
		this.sub_name = sub_name;
		this.word = word;
		this.l_grd_list = l_grd_list;
		this.area = area;
		this.keyword_list = keyword_list;
		this.day_list = day_list;
		this.day_str = day_str;
		this.db_day_str = db_day_str;
		this.db_day_list = db_day_list;
		this.stime = stime;
		this.etime = etime;
		this.price = price;
		this.online_ok_list = online_ok_list;
		this.min_price = min_price;
		this.max_price = max_price;
		this.startRow = startRow;
		this.endRow = endRow;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
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
	public String[] getL_grd_list() {
		return l_grd_list;
	}
	public void setL_grd_list(String[] l_grd_list) {
		this.l_grd_list = l_grd_list;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String[] getKeyword_list() {
		return keyword_list;
	}
	public void setKeyword_list(String[] keyword_list) {
		this.keyword_list = keyword_list;
	}
	public String[] getDay_list() {
		return day_list;
	}
	public void setDay_list(String[] day_list) {
		this.day_list = day_list;
	}
	public String getDay_str() {
		return day_str;
	}
	public void setDay_str(String day_str) {
		this.day_str = day_str;
	}
	public String getDb_day_str() {
		return db_day_str;
	}
	public void setDb_day_str(String db_day_str) {
		this.db_day_str = db_day_str;
	}
	public String[] getDb_day_list() {
		return db_day_list;
	}
	public void setDb_day_list(String[] db_day_list) {
		this.db_day_list = db_day_list;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getEtime() {
		return etime;
	}
	public void setEtime(String etime) {
		this.etime = etime;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String[] getOnline_ok_list() {
		return online_ok_list;
	}
	public void setOnline_ok_list(String[] online_ok_list) {
		this.online_ok_list = online_ok_list;
	}
	public String getMin_price() {
		return min_price;
	}
	public void setMin_price(String min_price) {
		this.min_price = min_price;
	}
	public String getMax_price() {
		return max_price;
	}
	public void setMax_price(String max_price) {
		this.max_price = max_price;
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
