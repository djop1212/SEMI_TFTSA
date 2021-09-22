package com.tftsa.itys.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.board.model.dao.BoardDao;
import com.tftsa.itys.board.model.vo.Board;
import com.tftsa.itys.common.Paging;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	// BoardService 인터페이스 파일에서 주석 처리 해 놓은 메소드들 필요하면
	// BoardService 인터페이스 페이지에서 주석 풀고 여기에서 위에 Override 어노테이션 
	// 달고 메소드 작성하기
	
	@Autowired // 이걸 해야 자동 DI 함
	BoardDao boardDao; //Dao 사용할거니까 
	
	
	@Override
	public Board selectBoard(int board_no) {
		return boardDao.selectBoard(board_no);
	}
	
	@Override
	public int selectListCount() {
		return boardDao.selectListCount();
	}

	@Override
	public ArrayList<Board> selectList(Paging page) {
		return boardDao.selectList(page);
	}

	@Override
	public int updateAddReadCount(int board_no) {
		return boardDao.updateAddReadCount(board_no);
	}

	@Override
	public int insertOriginBoard(Board board) {
		return boardDao.insertOriginBoard(board);
	}
	
//	@Override
//	public int insertReply(Board reply) {
//		return boardDao.insertReply(reply);
//	}
	
//	@Override
//	public int updateReplySeq(Board reply) {
//		return boardDao.updateReplySeq(reply);
//	}

	@Override
	public int updateOrigin(Board board) {
		return boardDao.updateOrigin(board);
	}
	
//	@Override
//	public int updateReply(Board reply) {
//		return boardDao.updateReply(reply);
//	}
	
	@Override
	public int deleteBoard(Board board) {
		return boardDao.deleteBoard(board);
	}

}
