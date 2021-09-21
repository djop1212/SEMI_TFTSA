package com.tftsa.itys.board.model.dao;

import java.util.List;

import com.tftsa.itys.board.model.vo.Reply;

public interface ReplyDao {
	
	// 댓글조회
	public List<Reply> readReply(int board_no);
	
	// 댓글 작성 
	public void writeReply(Reply reply);

	// 댓글 수정
	public void updateReply(Reply reply);
}