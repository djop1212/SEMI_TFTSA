package com.tftsa.itys.chatting.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.adminChatting.model.vo.Chattingblock;
import com.tftsa.itys.chatting.model.service.ChattingService;
import com.tftsa.itys.chatting.model.vo.Likes;
import com.tftsa.itys.chatting.model.vo.UserTutor;

@Controller
public class ChattingController {
	private static final Logger logger = LoggerFactory.getLogger(ChattingController.class);
	
	@Autowired
	ChattingService chattingService;
	
	// 채팅 조회 컨트롤러
	@RequestMapping("selectChatting.do")
	public ModelAndView selectChatting(ModelAndView mv, @RequestParam("user_no") int user_no) {
		UserTutor usertutor = chattingService.selectChatting(user_no);

		if (usertutor != null) {
			mv.addObject("usertutor", usertutor);
			mv.setViewName("chatting/chatting");
		} else {
			mv.addObject("message", user_no + "번 선생님 조회 실패.");
			mv.setViewName("common/error");
		}

		return mv;
	}
	
	// 채팅 삭제 컨트롤러
	@RequestMapping("deleteChatting.do")
	public String deleteChatting(@RequestParam("chat_room_no") int chat_room_no, Model model) {
		if (chattingService.deleteChatting(chat_room_no) > 0) {
			return "redirect:main.do";
		} else {
			model.addAttribute("message", chat_room_no + "번 채팅 삭제 실패!");
			return "common/error";
		}
	}
	
	// 신고하기 컨트롤러
	@RequestMapping("insertBlock.do")
	public String insertBlock(Chattingblock chattingblock, Model model, 
			@RequestParam("student_name") String student_name, @RequestParam("tutor_name") String tutor_name, 
			@RequestParam("contents") String contents, @RequestParam("user_no") int user_no) {
		logger.info("insertBlock.do : " + chattingblock);

		chattingblock.setStudent_name(student_name);
		chattingblock.setTutor_name(tutor_name);
		chattingblock.setContents(contents);
		chattingblock.setUser_no(user_no);
		chattingblock.setUser_name(student_name);
		
		if (chattingService.insertBlock(chattingblock) > 0) {
			return "redirect:selectChatting.do?user_no=" + chattingblock.getUser_no();
		} else {
			model.addAttribute("message", "신고하기 실패!");
			return "common/error";
		}
	}
	
	// 찜목록 추가
	@RequestMapping("insertLikes.do")
	public String insertLikes(Likes likes, Model model, @RequestParam("student_no") int student_no,
			@RequestParam("tutor_no") int tutor_no) {
		logger.info("insertLikes.do : " + likes);

		likes.setStudent_no(student_no);
		likes.setTutor_no(tutor_no);

		if (chattingService.insertLikes(likes) > 0) {
			return "redirect:selectChatting.do?user_no=" + likes.getTutor_no();
		} else {
			model.addAttribute("message", "찜목록 추가 실패!");
			return "common/error";
		}
	}
}
