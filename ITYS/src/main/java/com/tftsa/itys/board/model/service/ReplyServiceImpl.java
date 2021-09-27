package com.tftsa.itys.board.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tftsa.itys.board.model.dao.ReplyDao;
import com.tftsa.itys.board.model.vo.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Inject
	private ReplyDao rdao;
	
	// 댓글 조회
	@Override
	public List<Reply> readReply(int board_no) {
		return rdao.readReply(board_no);
	}

	// 댓글 작성
	@Override
	public void writeReply(Reply reply) {
		rdao.writeReply(reply);
	}
	
	// 댓글 수정
	@Override
	public int updateReply(Reply reply) {
		return rdao.updateReply(reply);
	}
	
	// 댓글 삭제
	@Override
	public int deleteReply(Reply reply) {
		return rdao.deleteReply(reply);
	}

	//댓글 수정 페이지 댓글 조회
	@Override
	public Reply selectReply(int com_no) {
		return rdao.selectReply(com_no);
	}

	
}
