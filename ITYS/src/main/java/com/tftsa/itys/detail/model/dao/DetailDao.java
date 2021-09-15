package com.tftsa.itys.detail.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.TutorLikes;
import com.tftsa.itys.detail.model.vo.TutorDetail;

@Repository("detailDao")
public class DetailDao {

	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int reviewInsert(Detail detail) {
		return sqlSession.update("detailMapper.reviewInsert", detail);
	}

	public TutorDetail tutorProfile(int user_no) {
		return sqlSession.selectOne("detailMapper.tutorProfile", user_no);
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
	}

