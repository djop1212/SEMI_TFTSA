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

	@Override
	public Tutor selectTutor(int user_no) {
		return paymentDao.selectTutor(user_no);
	}

	@Override
	public UserStudent selectUserStudent(int user_no) {
		return paymentDao.selectUserStudent(user_no);
	}

	@Override
	public Payment selectPayment(Payment payment) {
		return paymentDao.selectPayment(payment);
	}

	@Override
	public int insertPayment(Payment payment) {
		return paymentDao.insertPayment(payment);
	}

	@Override
	public int updatePayment(int pay_no) {
		return paymentDao.updatePayment(pay_no);
	}
}
