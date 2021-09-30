package com.tftsa.itys.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminPayment.model.vo.Payment;
import com.tftsa.itys.mypage.model.vo.Tutor;
import com.tftsa.itys.payment.model.dao.PaymentDao;
import com.tftsa.itys.payment.model.vo.UserStudent;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentDao paymentDao;

	// 선생님 정보 조회 ServiceImpl
	@Override
	public Tutor selectTutor(int user_no) {
		return paymentDao.selectTutor(user_no);
	}

	// 학생 정보 조회 ServiceImpl
	@Override
	public UserStudent selectUserStudent(int user_no) {
		return paymentDao.selectUserStudent(user_no);
	}

	// 결제 정보 조회 ServiceImpl
	@Override
	public Payment selectPayment(Payment payment) {
		return paymentDao.selectPayment(payment);
	}

	// 결제 정보 추가 ServiceImpl
	@Override
	public int insertPayment(Payment payment) {
		return paymentDao.insertPayment(payment);
	}

	// 결제 정보 업데이트 ServiceImpl
	@Override
	public int updatePayment(int pay_no) {
		return paymentDao.updatePayment(pay_no);
	}
}
