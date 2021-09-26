package com.tftsa.itys.adminReview.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String reviewListViewMethod(Model model,@RequestParam(value="searched_txt", required=false) String searched_txt) {
		ArrayList<AdminReview> list = reviewService.selectReviewAll(searched_txt);
		
		model.addAttribute("list", list);
		return "admin/adminReview";
	}
	
	@RequestMapping(value = "deleteReview.do", method = RequestMethod.POST)
	public String deleteReviewMethod(@RequestParam(value="list") List<String> list ,HttpServletRequest req,  Model model) {
		
		for (int i=0; i<list.size();i++) {
			System.out.println(list.get(i));
			reviewService.deleteReview(Integer.parseInt(list.get(i)));
			logger.info("삭제완료");
		}
		
		return "redirect:adminReview.do";
	}
}