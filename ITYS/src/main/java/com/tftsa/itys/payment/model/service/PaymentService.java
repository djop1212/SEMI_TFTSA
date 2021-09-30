package com.tftsa.itys.payment.model.service;

import com.tftsa.itys.adminPayment.model.vo.Payment;
import com.tftsa.itys.mypage.model.vo.Tutor;
import com.tftsa.itys.payment.model.vo.UserStudent;

public interface PaymentService {
	Tutor selectTutor(int user_no); // 선생님 정보 조회 Service
	UserStudent selectUserStudent(int user_no); // 학생 정보 조회 Service
	Payment selectPayment(Payment payment); // 결제 정보 조회 Service
	int insertPayment(Payment payment); // 결제 정보 추가 Service
	int updatePayment(int pay_no); // 결제 정보 업데이트 Service
}
