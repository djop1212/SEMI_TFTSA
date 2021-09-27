package com.tftsa.itys.adminReview.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminReview.model.vo.AdminReview;

@Repository("adminreviewDao")
public class AdminReviewDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<AdminReview> selectReviewAll(String user_name){
		List<AdminReview> list = sqlSession.selectList("adminreviewMapper.selectReviewAll", user_name);
		return (ArrayList<AdminReview>)list;
	}
	
	//리뷰 삭제
	public int deleteReview(int review_no) {
		return sqlSession.delete("adminreviewMapper.deleteReview", review_no);
	}
}
