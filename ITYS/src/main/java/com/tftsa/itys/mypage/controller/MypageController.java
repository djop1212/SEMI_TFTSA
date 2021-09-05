package com.tftsa.itys.mypage.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);

	
	
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
		return "mypage/wishList";
	}
	
	@RequestMapping("mclass.do")
	public String moveMyClass() {
		return "member/myClass";
	}

	
}
