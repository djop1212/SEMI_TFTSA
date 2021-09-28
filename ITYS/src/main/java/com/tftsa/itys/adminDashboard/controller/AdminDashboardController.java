package com.tftsa.itys.adminDashboard.controller;

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
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.adminDashboard.model.service.AdminDashboardService;

@Controller
public class AdminDashboardController {
	private static final Logger logger = LoggerFactory.getLogger(AdminDashboardController.class);

	@Autowired
	private AdminDashboardService admindashboardService;
// 뷰 페이지 이동 처리용 메소드 ----------------------------------------------
//	@RequestMapping("adminCategory.do")
//	public String categoryListViewMethod(Model model,@RequestParam(value="searched_txt", required=false) String searched_txt) {
//		ArrayList<Subject> list = categoryService.selectCategoryAll(searched_txt);
//		
//		model.addAttribute("list", list);
//		return "admin/adminCategory";
//	}
	
	@RequestMapping(value ="adminDashboard.do")
	public ModelAndView AdminDashView(ModelAndView mv) {
		int today_earning = 0;
		System.out.println("1: "+today_earning);

		today_earning =  admindashboardService.todayEarning();
		mv.addObject("today_earning",today_earning);
		mv.setViewName("admin/adminDashboard"); // 내보낼 뷰파일명 리턴
		return mv;
	}
}