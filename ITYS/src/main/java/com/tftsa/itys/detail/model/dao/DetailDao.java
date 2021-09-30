package com.tftsa.itys.detail.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.detail.model.vo.AfterPay;
import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.LikesCheck;
import com.tftsa.itys.detail.model.vo.OpenChat;
import com.tftsa.itys.detail.model.vo.RoomNo;
import com.tftsa.itys.detail.model.vo.TutorDetail;
import com.tftsa.itys.detail.model.vo.TutorLikes;
import com.tftsa.itys.detail.model.vo.TutorQna;

@Repository("detailDao")
public class DetailDao {

	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int reviewInsert(Detail detail) {

		return sqlSession.insert("detailMapper.reviewInsert", detail);
	}

	public ArrayList<TutorDetail> tutorProfile(int user_no) {
		List<TutorDetail> list = sqlSession.selectList("detailMapper.tutorProfile", user_no);
		return (ArrayList<TutorDetail>)list;
	}





	public ArrayList<TutorDetail> tutorPer(int user_no) {
		List<TutorDetail> list = sqlSession.selectList("detailMapper.tutorPer", user_no);
		return (ArrayList<TutorDetail>)list;
	}

	public int tutorReview(int user_no) {
		
		return sqlSession.selectOne("detailMapper.tutorReview", user_no);
	}

	public double avgScore(int user_no) {
		return sqlSession.selectOne("detailMapper.avgScore", user_no);
	}

	public ArrayList<Detail> reviewList(int user_no) {
		List<Detail> list = sqlSession.selectList("detailMapper.reviewList", user_no);
		return (ArrayList<Detail>)list;
	}


	public Detail reviewOne(int user_no) {
		return sqlSession.selectOne("detailMapper.reviewOne", user_no);
	}

	public int deleteReview(Detail detail) {
		return sqlSession.delete("detailMapper.deleteReview", detail);
	}

	public int tutorSaveInsert(TutorLikes tlikes) {
		return sqlSession.insert("detailMapper.tutorSaveInsert", tlikes);
	}

	public ArrayList<TutorQna> qnaList(int tutor_no) {
		List<TutorQna> list = sqlSession.selectList("detailMapper.qnaList", tutor_no);
		return (ArrayList<TutorQna>)list;
	}

	public int qnaAnswerInsert(TutorQna tutoqna) {
		return sqlSession.insert("detailMapper.qnaAnswerInsert", tutoqna);
	}

	public TutorQna qnaOne(int tutor_no) {
		return sqlSession.selectOne("detailMapper.qnaOne", tutor_no);
	}

	public int qnaUpdate(TutorQna tqup) {
		return sqlSession.update("detailMapper.qnaUpdate", tqup);
	}

	public ArrayList<TutorDetail> tutorPic(int user_no) {
		List<TutorDetail> list = sqlSession.selectList("detailMapper.tutorPic", user_no);
		return (ArrayList<TutorDetail>)list;
	}

	public int tutorSaveCancel(TutorLikes tlikes) {
		return sqlSession.delete("detailMapper.tutorSaveCancel", tlikes);
	}

	public TutorLikes tutorSave(LikesCheck lc) {
		return sqlSession.selectOne("detailMapper.tutorSave", lc);
	}

	public AfterPay reviewPay(String user_name) {
		return sqlSession.selectOne("detailMapper.reviewPay", user_name);
	}

	public TutorDetail tutorNo(int user_no) {
		return sqlSession.selectOne("detailMapper.tutorNo", user_no);
	}

	public int openChattingInsert(OpenChat oc) {
		return sqlSession.insert("detailMapper.openChattingInsert", oc);
	}

	public RoomNo roomNo(RoomNo rn) {
		return sqlSession.selectOne("detailMapper.roomNo", rn);
	}

	public RoomNo findRoom(int chat_room_no) {
		return sqlSession.selectOne("detailMapper.findRoom", chat_room_no);
	}
	

	
	}

