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
	
	@RequestMapping(value="myPage.do")
	public String moveMyPage() {
		return "member/myPage";
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String loginMethod() {
		return "common/main";
	}
	
	@RequestMapping(value="upsprofile.do")
	public String moveUpdateStudentProfile() {
		return "member/studentProfile";
	}
	
	@RequestMapping(value="uptprofile.do")
	public String moveUpdateTutorProfile() {
		return "member/tutorProfile";
	}
	
	@RequestMapping("wishl.do")
	public String moveWishList() {
		return "member/wishList";
	}
	
	@RequestMapping("mclass.do")
	public String moveMyClass() {
		return "member/myClass";
	}



}
