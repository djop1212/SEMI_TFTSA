package com.tftsa.itys.payment.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tftsa.itys.adminPayment.model.vo.Payment;
import com.tftsa.itys.mypage.model.vo.Tutor;
import com.tftsa.itys.payment.model.vo.UserStudent;

@Repository("paymentDao")
public class PaymentDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Tutor selectTutor(int user_no) {
		return sqlSession.selectOne("paymentMapper.selectTutor", user_no);
	}
	
	public UserStudent selectUserStudent(int user_no) {
		return sqlSession.selectOne("paymentMapper.selectUserStudent", user_no);
	}
	
	public Payment selectPayment(Payment payment) {
		return sqlSession.selectOne("paymentMapper.selectPayment", payment);
	}
	
	public int insertPayment(Payment payment) {
		return sqlSession.insert("paymentMapper.insertPayment", payment);
	}
	
	public int updatePayment(int pay_no) {
		return sqlSession.update("paymentMapper.updatePayment", pay_no);
	}
}