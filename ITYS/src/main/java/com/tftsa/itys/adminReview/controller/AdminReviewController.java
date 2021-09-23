package com.tftsa.itys.adminReview.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tftsa.itys.adminReview.model.service.AdminReviewService;
import com.tftsa.itys.adminReview.model.vo.AdminReview;

@Controller
public class AdminReviewController {
	private static final Logger logger = LoggerFactory.getLogger(AdminReviewController.class);

//	@Autowired
//	private CategoryService keywordService;
	@Autowired // 자동 DI 처리됨
	private AdminReviewService reviewService;
	// 뷰 페이지 이동 처리용 메소드 ----------------------------------------------
	@RequestMapping("adminReview.do")
	public String reviewListViewMethod(Model model) {
		ArrayList<AdminReview> list = reviewService.selectReviewAll();
		
		model.addAttribute("list", list);
		return "admin/adminReview";
	}
}