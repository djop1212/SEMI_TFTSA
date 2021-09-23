package com.tftsa.itys.board.model.service;

import java.util.List;

import com.tftsa.itys.board.model.vo.Reply;

public interface ReplyService {

	public List<Reply> readReply(int board_no);
//	public List<Reply> readReplyNo(int board_no);
	public void writeReply(Reply reply);
	public void updateReply(Reply reply);
	public void deleteReply(Reply reply);
	public Reply selectReply(int com_no);

}
