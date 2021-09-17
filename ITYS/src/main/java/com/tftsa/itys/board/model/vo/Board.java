package com.tftsa.itys.board.model.vo;

import java.sql.Date;

public class Board implements java.io.Serializable {
	private static final long serialVersionUID = 5555L;
	
	private int board_no;
	private String board_title;
	private String board_writer;
	private String board_content;
	private java.sql.Date board_date;
	private String board_original_filename;
	private String board_rename_filename;	
	private int view_cnt;
	
	public Board() {}

	public Board(int board_no, String board_title, String board_writer, String board_content, Date board_date,
			String board_original_filename, String board_rename_filename, int view_cnt) {
		super();
		this.board_no = board_no;
		this.board_title = board_title;
		this.board_writer = board_writer;
		this.board_content = board_content;
		this.board_date = board_date;
		this.board_original_filename = board_original_filename;
		this.board_rename_filename = board_rename_filename;
		this.view_cnt = view_cnt;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_writer() {
		return board_writer;
	}

	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public java.sql.Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(java.sql.Date board_date) {
		this.board_date = board_date;
	}

	public String getBoard_original_filename() {
		return board_original_filename;
	}

	public void setBoard_original_filename(String board_original_filename) {
		this.board_original_filename = board_original_filename;
	}

	public String getBoard_rename_filename() {
		return board_rename_filename;
	}

	public void setBoard_rename_filename(String board_rename_filename) {
		this.board_rename_filename = board_rename_filename;
	}

	public int getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Board [board_no=" + board_no + ", board_title=" + board_title + ", board_writer=" + board_writer
				+ ", board_content=" + board_content + ", board_date=" + board_date + ", board_original_filename="
				+ board_original_filename + ", board_rename_filename=" + board_rename_filename + ", view_cnt="
				+ view_cnt + "]";
	}

	
	
		
}
