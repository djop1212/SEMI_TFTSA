package com.tftsa.itys.chatting.controller;

import java.util.ArrayList;

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
import com.tftsa.itys.chatting.model.vo.Chatting;
import com.tftsa.itys.chatting.model.vo.StudentChattingroom;
import com.tftsa.itys.chatting.model.vo.TutorChattingroom;
import com.tftsa.itys.chatting.model.vo.UserChattingStudent;
import com.tftsa.itys.chatting.model.vo.UserChattingTutor;
import com.tftsa.itys.mypage.model.vo.Likes;

@Controller
public class ChattingController {
	private static final Logger logger = LoggerFactory.getLogger(ChattingController.class);
	
	@Autowired
	ChattingService chattingService;
	
	// 채팅 조회 컨트롤러
	@RequestMapping("selectChatting.do")
	public ModelAndView selectChatting(Likes likesList, ModelAndView mv, @RequestParam("chat_room_no") int chat_room_no, 
			@RequestParam("tutor_no") int tutor_no, @RequestParam("student_no") int student_no) {
		UserChattingStudent userchattingstudent = chattingService.selectStudent(chat_room_no);
		UserChattingTutor userchattingtutor = chattingService.selectTutor(chat_room_no);
		ArrayList<Chatting> chat = chattingService.selectChattingInfo(chat_room_no);
		StudentChattingroom studentchattingroom = chattingService.selectStudentChattingroom(chat_room_no);
		TutorChattingroom tutorchattingroom = chattingService.selectTutorChattingroom(chat_room_no);
		
		likesList.setTutor_no(tutor_no);
		likesList.setStudent_no(student_no);
		
		Likes likes = chattingService.selectLikes(likesList);
		
		mv.addObject("likes", likes);

		if (userchattingstudent != null && userchattingtutor != null && chat.size() > 0) {
			mv.addObject("userchattingstudent", userchattingstudent);
			mv.addObject("userchattingtutor", userchattingtutor);
			mv.addObject("chat", chat);
			mv.setViewName("chatting/chatting");
		} else if (studentchattingroom != null && tutorchattingroom != null){
			mv.addObject("studentchattingroom", studentchattingroom);
			mv.addObject("tutorchattingroom", tutorchattingroom);
			mv.addObject("chat", chat);
			mv.setViewName("chatting/chatting");
		} else {
			mv.addObject("message", chat_room_no + "번 채팅방 조회 실패.");
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
	
	// 찜목록 삭제 컨트롤러
	@RequestMapping("deleteLikes.do")
	public String deleteLikes(Likes likes, Model model, @RequestParam("student_no") int student_no,
			@RequestParam("tutor_no") int tutor_no, @RequestParam("chat_room_no") int chat_room_no) {
		logger.info("deleteLikes.do : " + likes);

		likes.setStudent_no(student_no);
		likes.setTutor_no(tutor_no);

		if (chattingService.deleteLikes(likes) > 0) {
			return "redirect:selectChatting.do?chat_room_no=" + chat_room_no + "&student_no=" + student_no + "&tutor_no=" + tutor_no;
		} else {
			model.addAttribute("message", "찜목록 삭제 실패!");
			return "common/error";
		}
	}
	
	// 신고하기 컨트롤러
	@RequestMapping("insertBlock.do")
	public String insertBlock(Chattingblock chattingblock, Model model, 
			@RequestParam("student_name") String student_name, @RequestParam("tutor_name") String tutor_name, 
			@RequestParam("contents") String contents, @RequestParam("user_no") int user_no, 
			@RequestParam("chat_room_no") int chat_room_no, @RequestParam("student_no") int student_no, 
			@RequestParam("tutor_no") int tutor_no) {
		logger.info("insertBlock.do : " + chattingblock);

		chattingblock.setStudent_name(student_name);
		chattingblock.setTutor_name(tutor_name);
		chattingblock.setContents(contents);
		chattingblock.setUser_no(user_no);
		chattingblock.setUser_name(student_name);
		
		if (chattingService.insertBlock(chattingblock) > 0) {
			return "redirect:selectChatting.do?chat_room_no=" + chat_room_no + "&student_no=" + student_no + "&tutor_no=" + tutor_no;
		} else {
			model.addAttribute("message", "신고하기 실패!");
			return "common/error";
		}
	}
	
	// 찜목록 추가 컨트롤러
	@RequestMapping("insertLikes.do")
	public String insertLikes(Likes likes, Model model, @RequestParam("student_no") int student_no,
			@RequestParam("tutor_no") int tutor_no, @RequestParam("chat_room_no") int chat_room_no) {
		logger.info("insertLikes.do : " + likes);

		likes.setStudent_no(student_no);
		likes.setTutor_no(tutor_no);

		if (chattingService.insertLikes(likes) > 0) {
			return "redirect:selectChatting.do?chat_room_no=" + chat_room_no + "&student_no=" + student_no + "&tutor_no=" + tutor_no;
		} else {
			model.addAttribute("message", "찜목록 추가 실패!");
			return "common/error";
		}
	}
	
	// 채팅 내역 저장 컨트롤러
	@RequestMapping("insertChatting.do")
	public String insertChatting(Chatting chatting, Model model,  
			@RequestParam("chat_room_no") int chat_room_no, @RequestParam("user_no") int user_no, 
			@RequestParam("chat_content") String chat_content, @RequestParam("student_no") int student_no, 
			@RequestParam("tutor_no") int tutor_no) {
		logger.info("insertChatting.do : " + chatting);
		
		chatting.setChat_room_no(chat_room_no);
		chatting.setUser_no(user_no);
		chatting.setChat_content(chat_content);

		if (chattingService.insertChatting(chatting) > 0) {
			return "redirect:selectChatting.do?chat_room_no=" + chat_room_no + "&student_no=" + student_no + "&tutor_no=" + tutor_no;
		} else {
			model.addAttribute("message", "채팅 내역 저장 실패!");
			return "common/error";
		}
    } 
}
