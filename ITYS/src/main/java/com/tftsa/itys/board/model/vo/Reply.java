package com.tftsa.itys.board.model.vo;

import java.sql.Date;

public class Reply implements java.io.Serializable {
	private static final long serialVersionUID = 5500L;

	private int com_no;
	private int board_no;
	private String com_level;
	private String com_writer;
	private java.sql.Date com_date;
	private String com_content;
	
	public Reply() {}

	public Reply(int com_no, int board_no, String com_level, String com_writer, Date com_date, String com_content) {
		super();
		this.com_no = com_no;
		this.board_no = board_no;
		this.com_level = com_level;
		this.com_writer = com_writer;
		this.com_date = com_date;
		this.com_content = com_content;
	}

	public int getCom_no() {
		return com_no;
	}

	public void setCom_no(int com_no) {
		this.com_no = com_no;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getCom_level() {
		return com_level;
	}

	public void setCom_level(String com_level) {
		this.com_level = com_level;
	}

	public String getCom_writer() {
		return com_writer;
	}

	public void setCom_writer(String com_writer) {
		this.com_writer = com_writer;
	}

	public java.sql.Date getCom_date() {
		return com_date;
	}

	public void setCom_date(java.sql.Date com_date) {
		this.com_date = com_date;
	}

	public String getCom_content() {
		return com_content;
	}

	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}

	@Override
	public String toString() {
		return "Reply [com_no=" + com_no + ", board_no=" + board_no + ", com_level=" + com_level + ", com_writer="
				+ com_writer + ", com_date=" + com_date + ", com_content=" + com_content + "]";
	}

	

}
