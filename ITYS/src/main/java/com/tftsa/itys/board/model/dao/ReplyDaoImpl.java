package com.tftsa.itys.board.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.board.model.vo.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao{
	
	@Inject SqlSession sql;
	
	// 댓글 조회
	@Override
	public List<Reply> readReply(int board_no) {
		return sql.selectList("replyMapper.readReply", board_no);
	}
	
	// 댓글 작성
	@Override
	public void writeReply(Reply reply) {
		sql.insert("replyMapper.writeReply", reply);
	}
	
	// 댓글 수정
	@Override
	public void updateReply(Reply reply) {
		sql.update("replyMapper.updateReply", reply);
	}

}
