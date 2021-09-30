package com.tftsa.itys.adminMember.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.adminMember.model.service.AdminMemberService;
import com.tftsa.itys.member.model.vo.Member;

@Controller
public class AdminMemberController {
	private static final Logger logger = LoggerFactory.getLogger(AdminMemberController.class);

//	@Autowired
//	private MemberService memberService;
	@Autowired // 자동 DI 처리됨
	private AdminMemberService memberService;
	// 뷰 페이지 이동 처리용 메소드 ----------------------------------------------
	@RequestMapping("adminMember.do")
	public String memberListViewMethod(Model model,@RequestParam(value="user_id", required=false) String user_id) {
		ArrayList<Member> list = memberService.selectAllList(user_id);
		
		model.addAttribute("list", list);
		return "admin/adminMember";
	}
	
	@RequestMapping(value = "deleteMember.do", method = RequestMethod.POST)
	public String deleteMemberMethod(@RequestParam(value="list") List<String> list,HttpServletRequest req,  Model model) {
		
		for (int i=0; i<list.size();i++) {
			System.out.println(list.get(i));
			memberService.deleteMember(list.get(i));
			logger.info("삭제완료");
		}
		
		return "redirect:adminMember.do";
	}
	

	@RequestMapping("adminStudent.do")
	public String memberStudentsViewMethod(Model model,@RequestParam(value="user_id", required=false) String user_id) {
		ArrayList<Member> list = memberService.selectAllStudents(user_id);
		System.out.printf("\nuser id: "+user_id);
		System.out.printf("\nlist: "+list);
		model.addAttribute("list", list);
		return "admin/adminStudent";
	}
	
	@RequestMapping("adminTutor.do")
	public String memberTutorsViewMethod(Model model,@RequestParam(value="user_id", required=false) String user_id) {
		ArrayList<Member> list = memberService.selectAllTutors(user_id);
		System.out.printf("\nuser id: "+user_id);
		System.out.printf("\nlist: "+list);
		model.addAttribute("list", list);
		return "admin/adminTutor";
	}
}
