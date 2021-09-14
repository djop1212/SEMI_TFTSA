package com.tftsa.itys.payment.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.payment.model.vo.Tutor;

@Repository("paymentDao")
public class PaymentDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Tutor selectTutor(int user_no) {
		return sqlSession.selectOne("paymentMapper.selectTutor", user_no);
	}
}