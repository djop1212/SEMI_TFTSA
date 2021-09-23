package com.tftsa.itys.adminCategory.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tftsa.itys.adminCategory.model.service.AdminCategoryService;
import com.tftsa.itys.adminCategory.model.vo.Subject;

@Controller
public class AdminCategoryController {
	private static final Logger logger = LoggerFactory.getLogger(AdminCategoryController.class);

//	@Autowired
//	private CategoryService keywordService;
	@Autowired // 자동 DI 처리됨
	private AdminCategoryService categoryService;
	// 뷰 페이지 이동 처리용 메소드 ----------------------------------------------
	@RequestMapping("adminCategory.do")
	public String categoryListViewMethod(Model model) {
		ArrayList<Subject> list = categoryService.selectCategoryAll();
		
		model.addAttribute("list", list);
		return "admin/adminCategory";
	}
}