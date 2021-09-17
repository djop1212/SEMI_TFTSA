package com.tftsa.itys.board.model.dao;

import java.util.ArrayList;
import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.board.model.vo.Board;
import com.tftsa.itys.common.Paging;

@Repository("boardDao")
public class BoardDao {

	@Autowired
	SqlSessionTemplate sqlSession;


	public int selectListCount() { // 전체 행의 갯수 조회
		return sqlSession.selectOne("boardMapper.selectListCount");
	}

	public ArrayList<Board> selectList(Paging page) {
		List<Board> list = sqlSession.selectList("boardMapper.selectList", page);
		return (ArrayList<Board>) list;
	}

	public Board selectBoard(int board_no) {
		return sqlSession.selectOne("boardMapper.selectBoard", board_no);
	}

	public int updateAddReadCount(int board_no) {
		return sqlSession.update("boardMapper.addReadCount", board_no);
	}

	public int insertOriginBoard(Board board) {
		return sqlSession.insert("boardMapper.insertOriginBoard", board);
	}

//	public int insertReply(Board reply) {
//		int result = 0;
//
//		if (reply.getBoard_level() == 2) { //댓글이면
//			result = sqlSession.insert("boardMapper.insertReply1", reply);
//		}
//		if (reply.getBoard_level() == 3) { //대댓글이면
//			result = sqlSession.insert("boardMapper.insertReply2", reply);
//		}
//
//		return result;
//	}
//
//	public int updateReplySeq(Board reply) {
//		int result = 0;
//
//		if (reply.getBoard_level() == 2) { //댓글이면
//			result = sqlSession.update("boardMapper.updateReplySeq1", reply);
//		}
//		if (reply.getBoard_level() == 3) { //대댓글이면
//			result = sqlSession.update("boardMapper.updateReplySeq2", reply);
//		}
//
//		return result;
//	}

	public int updateOrigin(Board board) {
		return sqlSession.update("boardMapper.updateOrigin", board);
	}

//	public int updateReply(Board reply) {
//		return sqlSession.update("boardMapper.updateReply", reply);
//	}

	public int deleteBoard(Board board) {
		return sqlSession.delete("boardMapper.deleteBoard", board);
	}
}


