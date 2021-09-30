package com.tftsa.itys.adminPayment.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminPayment.model.vo.Payment;

public interface AdminPaymentService {
	// 결제 내역 조회 Service
	ArrayList<Payment> selectPaymentAll();
}
