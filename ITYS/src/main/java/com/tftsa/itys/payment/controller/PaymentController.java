package com.tftsa.itys.payment.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
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
	public String kakaoPay() throws ParseException {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 2b7ed483453ae102c4326907ebe77c26");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoInput(true);
			conn.setDoOutput(true);
			
			Map<String, String> params = new HashMap<String, String>();
			params.put("cid", "TC0ONETIME");
			params.put("partner_order_id", "1001");
			params.put("partner_user_id", "gorany");
			params.put("item_name", "초코파이");
			params.put("quantity", "1");
			params.put("total_amount", "1");
			params.put("tax_free_amount", "0");
			params.put("approval_url", "http://localhost:8080/itys/kakaoPaySuccess.do");
			params.put("fail_url", "http://localhost:8080/itys/kakaoPaySuccessFail.do");
			params.put("cancel_url", "http://localhost:8080/itys/payment.do?user_no=2");
			
			String string_params = new String();
			for (Map.Entry<String, String> elem : params.entrySet()) {
				string_params += (elem.getKey() + "=" + elem.getValue() + "&");
			}
			conn.getOutputStream().write(string_params.getBytes());
			
			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject)parser.parse(in);
			
			String successUrl = (String)obj.get("next_redirect_pc_url");
			
			return "redirect:" + successUrl;
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "payment/payment";
	}
	
	@RequestMapping("kakaoPaySuccess.do")
	public String kakaoPaySuccess() {
		return "payment/kakaoPaySuccess"; // 내보낼 뷰파일명 리턴
	}
	
	@RequestMapping("kakaoPaySuccessFail.do")
	public String kakaoPaySuccessFail() {
		return "payment/kakaoPaySuccessFail"; // 내보낼 뷰파일명 리턴
	}
}
