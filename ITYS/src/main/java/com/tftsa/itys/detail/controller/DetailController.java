package com.tftsa.itys.detail.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tftsa.itys.detail.model.dao.DetailDao;
import com.tftsa.itys.detail.model.service.DetailService;
import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.TutorDetail;
import com.tftsa.itys.detail.model.vo.TutorLikes;
import com.tftsa.itys.detail.model.vo.TutorQna;


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
	@RequestMapping("qnaform.do")
	public String qnaForm(Model model, @RequestParam("tutor_no") int tutor_no) {
		TutorQna tutorqna = detailService.qnaOne(tutor_no);
		
		
			model.addAttribute("tutorqna", tutorqna);
		
		
			return  "detail/qnaform";
		

	}
	@RequestMapping("uqnaform.do")
	public String uqnaForm(Model model, @RequestParam("tutor_no") int tutor_no) {
		TutorQna tutorqna = detailService.qnaOne(tutor_no);
		
		
			model.addAttribute("tutorqna", tutorqna);
		
		
			return  "detail/uqnaform";
		

	}
	
	/*
	 * @RequestMapping("openChatting.do") public String moveChatting() { return
	 * "redirect:detail.do?tutor_no=" +tutor_no &"detail.do?student_no=" +
	 * student_no; }
	 */
	//viewForward
	
	
	@RequestMapping(value = "reviewform.do", method = RequestMethod.POST)
	public String reviewInsert(Detail detail, Model model, @RequestParam("pay_no") int pay_no,
										@RequestParam("student_no") int student_no,
										@RequestParam("tutor_no")int tutor_no) {
		logger.info("pay_no " + pay_no);
		if (detailService.reviewInsert(detail) > 0) {
			return  "detail/detail";
		} else {
			model.addAttribute("message", "회원가입 실패!");
			return "common/error";
		}
		
		
	}
	@RequestMapping("vdelete.do")
	public String deleteReview(Detail detail, HttpServletRequest request, Model model) {
		if(detailService.deleteReview(detail) > 0) {
			//글삭제 성공하면 저장폴더에 첨부파일도 삭제처리
			return "detail/detail";
		}else {
			model.addAttribute("message");
			return "common/error";
		}
	}
	
	
	@RequestMapping("tprofile.do")
	
	public String tutorProfile(@RequestParam(value="user_no" , required=false) int user_no,  Model model) {
		logger.info("user_no "+user_no);
		ArrayList<TutorDetail> tprofile = detailService.tutorProfile(user_no);
		ArrayList<TutorDetail> pd =detailService.tutorPer(user_no);
		int reviewCount = detailService.tutorReview(user_no);
		double avgScore = detailService.avgScore(user_no);
		logger.info("pd " + tprofile.size()); 
		
		if(tprofile.size() >0 ) {
			 model.addAttribute("tprofile", tprofile); 
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
		ArrayList<TutorDetail> td2 = detailService.tutorProfile(user_no);
		
		if(rl.size() > 0  ) {
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("avgScore", avgScore);
			model.addAttribute("rl", rl);
			model.addAttribute("td2", td2);
	
			return "detail/detail";
		}else {
			model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
			return "common/error";
		}

	}
@RequestMapping("tpic.do")

public String tutorPic(@RequestParam(value="user_no" , required=false) int user_no,  Model model) {
	logger.info("user_no "+user_no);
	int reviewCount = detailService.tutorReview(user_no);
	double avgScore = detailService.avgScore(user_no);
	
	ArrayList<TutorDetail> tpic = detailService.tutorPic(user_no);
	
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("avgScore", avgScore);
		model.addAttribute("tpic", tpic);
		return "detail/detail";
		

}
@RequestMapping("tsave.do")

public String tutorSave(TutorLikes tlikes,@RequestParam(value="student_no" , required=false) int student_no,  Model model
								, @RequestParam(value="tutor_no") int tutor_no
								) {
	logger.info("tutor_no "+tutor_no);
	
	
	if(detailService.tutorSaveInsert(tlikes) > 0) {
	
		return  "detail/detail";
	}else {
		model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
		return "common/error";
	}

}
@RequestMapping("ctsave.do")

public String tutorSaveCancel(TutorLikes tlikes,@RequestParam(value="student_no" , required=false) int student_no,  Model model
								, @RequestParam(value="tutor_no") int tutor_no
								) {
	logger.info("tutor_no "+tutor_no);

	
	if(detailService.tutorSaveCancel(tlikes) > 0) {
	
		return  "detail/detail";
	}else {
		model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
		return "common/error";
	}

}
	@RequestMapping("tqna.do")
	public String tutorQna(Model model, @RequestParam(value="tutor_no") int tutor_no) {
		logger.info("tutor_no "+ tutor_no);
		
		TutorQna tutorqna = detailService.qnaOne(tutor_no);
		ArrayList<TutorDetail> td2 = detailService.tutorProfile(tutor_no);
		int reviewCount = detailService.tutorReview(tutor_no);
		double avgScore = detailService.avgScore(tutor_no);
			model.addAttribute("tutorqna", tutorqna);
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("avgScore", avgScore);
			model.addAttribute("td2", td2);
		
		
			return  "detail/detail";
		

	}
	
	@RequestMapping("qnaanswer.do")
	public String qnaAnswer(TutorQna tq, Model model, @RequestParam(value="tutor_no") int tutor_no) {
		logger.info("user_no "+ tutor_no);
		
		
		if(detailService.qnaAnswerInsert(tq) > 0) { 
			model.addAttribute("tq", tq);
		
		
			return  "redirect:tqna.do?tutor_no=" + tutor_no;
		}else {
			model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
			return "common/error";
		}

	}
	
	
	  @RequestMapping("qnaupdate.do") 
	  public String qnaUpdate(TutorQna tqup, Model model, @RequestParam(value="tutor_no") int tutor_no) {
	  logger.info("user_no "+ tutor_no);
	  
	  
	  if(detailService.qnaUpdate(tqup)> 0 ) { 
		  model.addAttribute("tqd", tqup);
	   return "redirect:tqna.do?tutor_no=" + tutor_no;
	  }else { model.addAttribute("message",
	  "회원 목록이 존재 하지 않습니다."); return "common/error"; }
	  
	  }
	 

}

