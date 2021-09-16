package com.tftsa.itys.board.model.service;

import java.util.ArrayList;

import com.tftsa.itys.board.model.vo.Board;
import com.tftsa.itys.common.Paging;

public interface BoardService {
	// ArrayList<Board> selectTop3(); //TOP3 조회
	int selectListCount();   // 전체 목록갯수 조회하는 getListCount 를 select로 바꿈
								   // 트랜잭션 관리를 위해서 select로 바꿈
	ArrayList<Board> selectList(Paging page); // 페이지 단위로 게시글 목록 조회
	Board selectBoard(int board_no);	 // 글 상세보기
	int updateAddReadCount(int board_no);  // 게시글 번호의 게시글에 대한 조회수 1증가
	int insertOriginBoard(Board board);  // 원 게시글 등록
//	int insertReply(Board reply); // 댓글 등록
//	int updateReplySeq(Board reply);  // 기존 댓글 순번 1증가 처리
	int updateOrigin(Board board); // 원 게시글 수정
//	int updateReply(Board reply); // 댓글 수정
	int deleteBoard(Board board); // 원 게시글 삭제

}
