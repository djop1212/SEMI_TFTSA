package com.tftsa.itys.payment.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.mypage.model.vo.Tutor;
import com.tftsa.itys.payment.model.service.PaymentService;

@Controller
public class PaymentController {
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@Autowired
	PaymentService paymentService;
	
	// 결제 페이지로 이동
	@RequestMapping("payment.do")
	public ModelAndView paymentViewForward(ModelAndView mv, @RequestParam("user_no") int user_no) {
		
		Tutor tutor = paymentService.selectTutor(user_no);
		
		if (tutor != null) {
			mv.addObject("tutor", tutor);
			mv.setViewName("payment/payment");
		}else {
			mv.addObject("message", user_no + "번 선생님 조회 실패.");
			mv.setViewName("common/error");
		}
		
		return mv;
    }
}
