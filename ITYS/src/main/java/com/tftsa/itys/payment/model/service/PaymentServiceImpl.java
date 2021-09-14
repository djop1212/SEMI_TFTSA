package com.tftsa.itys.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.payment.model.dao.PaymentDao;
import com.tftsa.itys.payment.model.vo.Tutor;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentDao paymentDao;

	@Override
	public Tutor selectTutor(int user_no) {
		return paymentDao.selectTutor(user_no);
	}
}
