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

import com.tftsa.itys.adminPayment.model.vo.Payment;
import com.tftsa.itys.mypage.model.vo.Tutor;
import com.tftsa.itys.payment.model.service.PaymentService;
import com.tftsa.itys.payment.model.vo.UserStudent;

@Controller
public class PaymentController {
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@Autowired
	PaymentService paymentService;
	
	// 결제 페이지 컨트롤러
	@RequestMapping("payment.do")
	public ModelAndView paymentViewForward(Payment paymentList, ModelAndView mv, @RequestParam("tutor_no") int tutor_no, 
			@RequestParam("student_no") int student_no, @RequestParam("student_name") String student_name, 
			@RequestParam("tutor_name") String tutor_name, @RequestParam("pay_amount") String pay_amount) {
		
		Tutor tutor = paymentService.selectTutor(tutor_no);
		UserStudent userstudent = paymentService.selectUserStudent(student_no);
		
		paymentList.setStudent_name(student_name);
		paymentList.setTutor_name(tutor_name);
		paymentList.setPay_amount(pay_amount);
		
		Payment payment = paymentService.selectPayment(paymentList);
		
		if (payment == null) {
			paymentService.insertPayment(paymentList);
		}
		
		if (tutor != null) {
			mv.addObject("tutor", tutor);
			mv.addObject("userstudent", userstudent);
			mv.addObject("payment", payment);
			mv.setViewName("payment/payment");
		}else {
			mv.addObject("message", tutor_no + "번 선생님 조회 실패.");
			mv.setViewName("common/error");
		}
		
		return mv;
    }

	// 카카오페이 컨트롤러
	@RequestMapping("kakaoPay.do")
	public String kakaoPay(@RequestParam("user_name") String user_name, @RequestParam("pay_no") int pay_no, 
			@RequestParam("sub_name") String sub_name, @RequestParam("tutor_no") int tutor_no, 
			@RequestParam("student_no") int student_no, @RequestParam("pay_amount") String pay_amount, 
			@RequestParam("tutor_name") String tutor_name) throws ParseException {
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
			params.put("partner_order_id", Integer.toString(pay_no));
			params.put("partner_user_id", user_name);
			params.put("item_name", sub_name);
			params.put("quantity", "1");
			params.put("total_amount", "1");
			params.put("tax_free_amount", "0");
			params.put("approval_url", "http://localhost:8087/itys/kakaoPaySuccess.do?pay_no=" + pay_no);
			params.put("fail_url", "http://localhost:8087/itys/kakaoPaySuccessFail.do");
			params.put("cancel_url", "http://localhost:8087/itys/payment.do?tutor_no=" + tutor_no + "%26student_no=" + student_no + "%26tutor_name=" + tutor_name + "%26student_name=" + user_name + "%26pay_amount=" + pay_amount);
			
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
	
	// 카카오페이 성공 컨트롤러
	@RequestMapping("kakaoPaySuccess.do")
	public String kakaoPaySuccess(@RequestParam("pay_no") int pay_no) {
		paymentService.updatePayment(pay_no);
		
		return "payment/kakaoPaySuccess"; // 내보낼 뷰파일명 리턴
	}
	
	// 카카오페이 실패 컨트롤러
	@RequestMapping("kakaoPaySuccessFail.do")
	public String kakaoPaySuccessFail() {
		return "payment/kakaoPaySuccessFail"; // 내보낼 뷰파일명 리턴
	}
}
