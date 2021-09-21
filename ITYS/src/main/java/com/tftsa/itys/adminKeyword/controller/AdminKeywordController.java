package com.tftsa.itys.adminKeyword.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tftsa.itys.adminKeyword.model.service.AdminKeywordService;
import com.tftsa.itys.adminKeyword.model.vo.AdminKeyword;

@Controller
public class AdminKeywordController {
	private static final Logger logger = LoggerFactory.getLogger(AdminKeywordController.class);

//	@Autowired
//	private KeywordService keywordService;
	@Autowired // 자동 DI 처리됨
	private AdminKeywordService keywordService;
	// 뷰 페이지 이동 처리용 메소드 ----------------------------------------------
	@RequestMapping("adminKeyword.do")
	public String keywordListViewMethod(Model model) {
		ArrayList<AdminKeyword> list = keywordService.selectAllKeywords();
		
		model.addAttribute("list", list);
		return "admin/adminKeyword";
	}
}
