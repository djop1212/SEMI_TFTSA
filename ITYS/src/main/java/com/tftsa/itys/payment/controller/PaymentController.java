package com.tftsa.itys.payment.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

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

	@RequestMapping("kakaoPay.do")
	public String kakaoPay() {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 2b7ed483453ae102c4326907ebe77c26");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true);
			String parameter = "cid=TC0ONETIME&partner_order_id=1001&partner_user_id=gorany&item_name=초코파이&quantity=1&total_amount=2200&tax_free_amount=0&approval_url=http://localhost:8080/kakaoPaySuccess&fail_url=http://localhost:8080/kakaoPaySuccessFail&cancel_url=http://localhost:8080/kakaoPayCancel";
			OutputStream output = conn.getOutputStream();
			DataOutputStream dataoutput = new DataOutputStream(output);
			dataoutput.writeBytes(parameter);
			dataoutput.close();
			
			int result = conn.getResponseCode();
			
			InputStream input;
			if (result == 200) {
				input = conn.getInputStream();
			} else {
				input = conn.getErrorStream();
			}
			InputStreamReader ireader = new InputStreamReader(input);
			BufferedReader breader = new BufferedReader(ireader);
			return breader.readLine();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "payment/payment";
	}
	
}
