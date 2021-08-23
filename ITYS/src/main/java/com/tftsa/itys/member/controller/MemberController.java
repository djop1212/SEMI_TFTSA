package com.tftsa.itys.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

//	@Autowired
//	private MemberService memberService;

	// 뷰 페이지 이동 처리용 메소드 ----------------------------------------------
	@RequestMapping("loginPage.do")
	public String moveLoginPage() {
		return "member/loginPage";
	}

	@RequestMapping("enrollPage.do")
	public String moveEnrollPage() {
		return "member/enrollPage";
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginMethod() {
		return "common/main";
	}



}
