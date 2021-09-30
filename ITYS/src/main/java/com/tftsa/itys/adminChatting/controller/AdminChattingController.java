package com.tftsa.itys.adminChatting.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tftsa.itys.adminChatting.model.service.AdminChattingService;
import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.adminChatting.model.vo.UserChatting;
import com.tftsa.itys.adminChatting.model.vo.Userinfo;

@Controller
public class AdminChattingController {
	private static final Logger logger = LoggerFactory.getLogger(AdminChattingController.class);
	
	@Autowired
	private AdminChattingService adminchattingService;
	
	// 채팅 내역 조회 컨트롤러
	@RequestMapping("selectchattingall.do")
	public String selectChattingAll(Model model) {
		ArrayList<UserChatting> list1 = adminchattingService.selectChattingAll();
		ArrayList<Chattingblock> list2 = adminchattingService.selectChattingBlockAll();

		if (list1.size() > 0 && list2.size() > 0) {
			model.addAttribute("list1", list1);
			model.addAttribute("list2", list2);
			return "admin/adminChatting";
		} else {
			model.addAttribute("message", "등록된 채팅내역 정보가 없습니다.");
			return "common/error";
		}
	}
	
	// 로그인 제한 업데이트 컨트롤러
	@RequestMapping("updateLoginOk.do")
	public String updateLoginOK(Userinfo userinfo, Model model) {
		logger.info("updateLoginOK.do : " + userinfo.getUser_id() + ", " + userinfo.getLogin_ok());
		
		if (adminchattingService.updateLoginOk(userinfo) > 0) {
			return "redirect:selectchattingall.do";
		}else {
			model.addAttribute("message", "로그인 제한/허용 처리 오류");
			return "common/error";
		}
	}
}
