package com.tftsa.itys.payment.model.service;

import com.tftsa.itys.adminPayment.model.vo.Payment;
import com.tftsa.itys.mypage.model.vo.Tutor;
import com.tftsa.itys.payment.model.vo.UserStudent;

public interface PaymentService {
	Tutor selectTutor(int user_no);
	UserStudent selectUserStudent(int user_no);
	Payment selectPayment(Payment payment);
	int insertPayment(Payment payment);
	int updatePayment(int pay_no);
}
