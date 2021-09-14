package com.tftsa.itys.adminPayment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminPayment.model.dao.AdminPaymentDao;
import com.tftsa.itys.adminPayment.model.vo.Payment;

@Service("adminpaymentService")
public class AdminPaymentServiceImpl implements AdminPaymentService{

	@Autowired
	private AdminPaymentDao adminpaymentDao;
	
	@Override
	public ArrayList<Payment> selectPaymentAll() {
		return adminpaymentDao.selectPaymentAll();
	}
}
