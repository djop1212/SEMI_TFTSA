package com.tftsa.itys.adminPayment.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminPayment.model.vo.Payment;

public interface AdminPaymentService {
	ArrayList<Payment> selectPaymentAll();
}
