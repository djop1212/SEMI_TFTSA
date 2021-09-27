package com.tftsa.itys.board.model.dao;

import java.util.List;

import com.tftsa.itys.board.model.vo.Reply;

public interface ReplyDao {
	
	// 댓글조회
		public List<Reply> readReply(int board_no);
		
		// 댓글 작성 
		public void writeReply(Reply reply);

		// 댓글 수정
		public int updateReply(Reply reply);
		
		// 댓글 삭제
		public int deleteReply(Reply reply);

		//댓글 수정 페이지 댓글 조회
		public Reply selectReply(int com_no);


	
}
