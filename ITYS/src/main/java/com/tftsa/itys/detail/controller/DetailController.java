package com.tftsa.itys.detail.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tftsa.itys.detail.model.service.DetailService;
import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.TutorDetail;


@Controller
public class DetailController {
	private static final Logger logger = LoggerFactory.getLogger(DetailController.class);

	@Autowired
	DetailService detailService;
	
	@RequestMapping("detail.do")
	public String moveLoginPage() {
		return "detail/detail";
	}
	
	@RequestMapping("reviewform.do")
	public String reviewForm() {
		return "detail/reviewform";
	}
	//viewForward
	
	
	@RequestMapping(value = "reviewform.do", method = RequestMethod.POST)
	public String reviewInsert(Detail detail, Model model) {
		if (detailService.reviewInsert(detail) > 0) {
			return "detail/reviewform "; /*redirect:detail.do?tut_no=" +();*/
		} else {
			model.addAttribute("message", "회원가입 실패!");
			return "common/error";
		}
		
		
	}
	
	@RequestMapping("tprofile.do")
	
	public String tutorProfile(@RequestParam(value="user_no" , required=false) int user_no,  Model model) {
		logger.info("user_no "+user_no);
		TutorDetail td = detailService.tutorProfile(user_no);
		ArrayList<TutorDetail> pd =detailService.tutorPer(user_no);
		int reviewCount = detailService.tutorReview(user_no);
		double avgScore = detailService.avgScore(user_no);
		logger.info("td " + pd.size()); 
		
		if(td != null  ) {
			model.addAttribute("td", td);
			model.addAttribute("pd", pd);
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("avgScore", avgScore);
			return "detail/detail";
		}else {
			model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
			return "common/error";
		}

	}
@RequestMapping("treview.do")
	
	public String tutorReview(@RequestParam(value="user_no" , required=false) int user_no,  Model model) {
		logger.info("user_no "+user_no);
		int reviewCount = detailService.tutorReview(user_no);
		double avgScore = detailService.avgScore(user_no);
		ArrayList<Detail> rl = detailService.reviewList(user_no);
		TutorDetail td = detailService.tutorProfile(user_no);
		if(reviewCount > 0  ) {
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("avgScore", avgScore);
			model.addAttribute("rl", rl);
			model.addAttribute("td", td);
			return "detail/detail";
		}else {
			model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
			return "common/error";
		}

	}
}
