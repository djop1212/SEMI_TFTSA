package com.tftsa.itys.adminPayment.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tftsa.itys.adminPayment.model.service.AdminPaymentService;
import com.tftsa.itys.adminPayment.model.vo.Payment;

@Controller
public class AdminPaymentController {
	
	@Autowired
	private AdminPaymentService adminpaymentService;
	
	// 결제 내역 조회 컨트롤러
	@RequestMapping("selectpaymentall.do")
	public String selectPaymentAll(Model model) {
		ArrayList<Payment> list = adminpaymentService.selectPaymentAll();

		if (list.size() > 0) {
			model.addAttribute("list", list);
			return "admin/adminDeposit";
		} else {
			model.addAttribute("message", "등록된 결제내역 정보가 없습니다.");
			return "common/error";
		}
	}
}
