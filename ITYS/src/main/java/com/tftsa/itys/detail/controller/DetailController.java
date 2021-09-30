package com.tftsa.itys.detail.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.detail.model.service.DetailService;
import com.tftsa.itys.detail.model.vo.AfterPay;
import com.tftsa.itys.detail.model.vo.Detail;
import com.tftsa.itys.detail.model.vo.LikesCheck;
import com.tftsa.itys.detail.model.vo.OpenChat;
import com.tftsa.itys.detail.model.vo.RoomNo;
import com.tftsa.itys.detail.model.vo.TutorDetail;
import com.tftsa.itys.detail.model.vo.TutorLikes;
import com.tftsa.itys.detail.model.vo.TutorQna;
import com.tftsa.itys.member.model.vo.Member;



@Controller
public class DetailController {
	private static final Logger logger = LoggerFactory.getLogger(DetailController.class);

	@Autowired
	DetailService detailService;
	
	@RequestMapping("detail.do")
	public String detailView(@RequestParam(value="user_no" , required=false) int user_no, 
			@RequestParam(value="student_no",required=false) int student_no, 
			@RequestParam(value="tutor_no", required=false)int tutor_no,
			LikesCheck lc, RoomNo rn,
		 Model model) {
			logger.info("user_no "+user_no);
			logger.info("student_no "+student_no);
			logger.info("tutor_no" + tutor_no);
		ArrayList<TutorDetail> tprofile = detailService.tutorProfile(user_no);
		ArrayList<TutorDetail> pd =detailService.tutorPer(user_no);
		int reviewCount = detailService.tutorReview(user_no);
		TutorDetail tutorno = detailService.tutorNo(user_no);
		TutorLikes tlikes = detailService.tutorSave(lc);
		RoomNo searchRoom = detailService.roomNo(rn);
		logger.info("pd " + pd.size()); 
		logger.info("tlikes"+tlikes);
		if(tprofile.size() >0  && reviewCount >0) {
		double avgScore = detailService.avgScore(user_no);
			model.addAttribute("tprofile", tprofile); 
			model.addAttribute("tlikes",tlikes);
			model.addAttribute("pd", pd);
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("avgScore", avgScore);
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("searchRoom", searchRoom);
		return "detail/detail";
		
		}else if(tprofile.size() >0  && reviewCount <=0){
		
			model.addAttribute("tprofile", tprofile); 
			model.addAttribute("tlikes",tlikes);
			model.addAttribute("pd", pd);
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("tutorno", tutorno);
		return "detail/detail";
		}else {
			model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
		return "common/error";
		}
		
		}
	
	@RequestMapping("reviewform.do")
	public String reviewForm(@RequestParam("pay_no") int pay_no,
			@RequestParam("student_no") int student_no,
			@RequestParam("user_no")int user_no, Model model) {
		TutorDetail tutorno = detailService.tutorNo(user_no);
		model.addAttribute("tutorno", tutorno);
		model.addAttribute("pay_no", pay_no);
		return  "detail/reviewform";
		
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
	
	
	@RequestMapping(value = "reviewformsubmit.do", method = RequestMethod.POST)

	public String reviewInsert(Detail detail, Model model, @RequestParam("pay_no") int pay_no,
										@RequestParam("student_no") int student_no,
										@RequestParam("user_no")int user_no, HttpSession session) {
		logger.info("pay_no " + pay_no);
		TutorDetail tutorno = detailService.tutorNo(user_no);
	
		if (detailService.reviewInsert(detail) > 0) {
			Member loginUser=(Member)session.getAttribute("loginMember");
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("pay_no", pay_no);
			model.addAttribute("student_no", student_no);
			model.addAttribute("loginUser", loginUser);
			logger.info("loginUser.getUser_name"+ loginUser.getUser_name());
			/*
			 * return "redirect:treview.do?user_no=" + tutorno.getUser_no() + "&" +
			 * "student_no=" + student_no + "&" + "user_name=" + loginUser.getUser_name();
			 */
				return "redirect:detail.do?user_no="+user_no +"&"+"tutor_no=" +tutorno.getUser_no();
		} else {
			model.addAttribute("message", "회원가입 실패!");
			return "common/error";
		}
		
		
	}

	@RequestMapping("vdelete.do")
	public String deleteReview(Detail detail, Model model, @RequestParam("rev_no") int rev_no,
			@RequestParam("student_no") int student_no,
			@RequestParam("user_no")int user_no, HttpSession session) {
		TutorDetail tutorno = detailService.tutorNo(user_no);
		
		logger.info("student_no" + student_no);
		if(detailService.deleteReview(detail) > 0) {
			Member loginUser=(Member)session.getAttribute("loginMember");
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("student_no", student_no);
			model.addAttribute("user_no", user_no);
			model.addAttribute("loginUser", loginUser);
			logger.info("loginUser.getUser_name "+ loginUser.getUser_name());
			/*
			 * return "redirect:treview.do?user_name=" +loginUser.getUser_name() + "&" +
			 * "student_no=" + student_no + "&" + "user_no=" + tutorno.getUser_no();
			 */
			return "redirect:detail.do?user_no="+user_no +"&"+"tutor_no=" +tutorno.getUser_no();
		}else {
			model.addAttribute("message");
			return "common/error";
		}
	}
	

@RequestMapping("tprofilet.do")
	
	public String tutorProfileTeacher(@RequestParam(value="user_no" , required=false) int user_no, 
									 Model model) {
		logger.info("user_no "+user_no);
		

		ArrayList<TutorDetail> tprofile = detailService.tutorProfile(user_no);
		ArrayList<TutorDetail> pd =detailService.tutorPer(user_no);
		int reviewCount = detailService.tutorReview(user_no);
		TutorDetail tutorno = detailService.tutorNo(user_no);
	
		
		logger.info("tprofile " + tprofile.size()); 
		
		if(tprofile.size() >0 && reviewCount >0) {
			 model.addAttribute("tprofile", tprofile); 
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("pd", pd);
			double avgScore = detailService.avgScore(user_no); 
			model.addAttribute("reviewCount", reviewCount);
			 model.addAttribute("avgScore", avgScore);
			 model.addAttribute("user_no", user_no);
			return "detail/detail";
		}else if(tprofile.size() >0 && reviewCount <= 0){
			 model.addAttribute("tprofile", tprofile); 
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("pd", pd);
			model.addAttribute("reviewCount", reviewCount);
			
			return "detail/detail";
		}else {
			model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
			return "common/error";
		}

	}
	@RequestMapping("tprofile.do")
	
	public ModelAndView tutorProfile(@RequestParam(value="user_no" , required=false) int user_no, 
										@RequestParam(value="student_no",required=false) int student_no,
										@RequestParam(value="tutor_no",required=false) int tutor_no,
										ModelAndView mv, HttpServletResponse response, LikesCheck lc) {
		logger.info("user_no "+user_no);
		logger.info("student_no "+student_no);
		logger.info("tutor_no"  +tutor_no);
		
		ArrayList<TutorDetail> tprofile = detailService.tutorProfile(user_no);
		ArrayList<TutorDetail> pd =detailService.tutorPer(user_no);
		int reviewCount = detailService.tutorReview(user_no);
		TutorDetail tutorno = detailService.tutorNo(user_no);
		TutorLikes tlikes = detailService.tutorSave(lc);
		TutorDetail tutorqna = detailService.tutorNo(user_no);
		logger.info("tprofile " + tprofile.size()); 
		logger.info("tlikes" + tlikes);
		if(tprofile.size() >0  && reviewCount >0) {
			double avgScore = detailService.avgScore(user_no);
			 mv.addObject("tprofile", tprofile); 
			 mv.addObject("tlikes",tlikes);
			 mv.addObject("pd", pd);
			 mv.addObject("reviewCount", reviewCount);
			 mv.addObject("avgScore", avgScore);
			 mv.addObject("tutorno", tutorno);
			 mv.addObject("user_no", user_no);
			 mv.addObject("student_no", student_no);
			 mv.addObject("tutor_no", tutor_no);
			mv.addObject("tutorqna",tutorqna);
			 mv.setViewName("redirect:detail.do?user_no="+ user_no + "&" + "student_no=" + student_no + "&" + "tutor_no=" + tutor_no);
		}else if(tprofile.size() >0  && reviewCount <=0){
			
			mv.addObject("tprofile", tprofile); 
			mv.addObject("tlikes",tlikes);
			mv.addObject("pd", pd);
			mv.addObject("reviewCount", reviewCount);
			mv.addObject("tutorno", tutorno);
			 mv.addObject("user_no", user_no);
			 mv.addObject("student_no", student_no);
			 mv.addObject("tutor_no", tutor_no);
			 mv.addObject("tutorqna",tutorqna);
			 mv.setViewName("redirect:detail.do?user_no="+ user_no + "&" + "student_no=" + student_no + "&" + "tutor_no=" + tutor_no);
		
		}else {
			mv.addObject("message", "회원 목록이 존재 하지 않습니다.");
			mv.setViewName("common/error");
		}
return mv;
	}
	
@RequestMapping("treviewt.do")
	
	public String tutorReviewTeacher(@RequestParam(value="user_no" , required=false) int user_no,
										Model model) {
		logger.info("user_no "+user_no);
		int reviewCount = detailService.tutorReview(user_no);
		
		ArrayList<Detail> rl = detailService.reviewList(user_no);
		
		ArrayList<TutorDetail> td2 = detailService.tutorProfile(user_no);
		
		TutorDetail tutorno = detailService.tutorNo(user_no);
		if(td2 != null  && reviewCount >0 ) {
			double avgScore = detailService.avgScore(user_no);
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("avgScore", avgScore); 
			model.addAttribute("rl", rl);
			model.addAttribute("td2", td2);
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("user_no", user_no);
			return "detail/detail";
		}else if(td2 != null  && reviewCount <= 0){
			
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("rl", rl);
			model.addAttribute("td2", td2);
			model.addAttribute("tutorno",tutorno);
			model.addAttribute("user_no", user_no);
			 model.addAttribute("message", "등록된 리뷰가 없습니다.");
			return "detail/detail";
		}else {
			model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
			return "common/error";
		}


	}

@RequestMapping("treview.do")
	
	public String tutorReview(RoomNo rn,@RequestParam(value="user_no" , required=false) int user_no,  @RequestParam(value="student_no",required=false) int student_no,
										@RequestParam(value="user_name") String user_name, Model model, LikesCheck cl) {
		logger.info("user_no "+user_no);
		int reviewCount = detailService.tutorReview(user_no);
		ArrayList<Detail> rl = detailService.reviewList(user_no);
		AfterPay reviewPay = detailService.reviewPay(user_name);
		ArrayList<TutorDetail> td2 = detailService.tutorProfile(user_no);
		TutorLikes tlikes = detailService.tutorSave(cl);
		TutorDetail tutorno = detailService.tutorNo(user_no);
		RoomNo searchRoom = detailService.roomNo(rn);
		logger.info("user_name "+user_name);
		if(rl.size() > 0 && reviewCount > 0 ) {
			double avgScore = detailService.avgScore(user_no);
			model.addAttribute("reviewPay", reviewPay);
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("avgScore", avgScore);
			model.addAttribute("rl", rl);
			model.addAttribute("td2", td2);
			 model.addAttribute("tlikes",tlikes);
			 model.addAttribute("tutorno",tutorno);
			 model.addAttribute("searchRoom",searchRoom);
			 return "detail/detail";
		}else if(rl.size() >= 0 && reviewCount <= 0){
			model.addAttribute("reviewPay", reviewPay);
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("rl", rl);
			model.addAttribute("td2", td2);
			 model.addAttribute("tlikes",tlikes);
			 model.addAttribute("tutorno",tutorno);
			 model.addAttribute("searchRoom",searchRoom);
			 model.addAttribute("message", "등록된 리뷰가 없습니다.");
			 return "detail/detail";
		}else {
			model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
			return "common/error";
		}

	}

@RequestMapping("tpict.do")

public String tutorPicTeacher(@RequestParam(value="user_no" , required=false) int user_no, Model model) {
	logger.info("user_no "+user_no);
	int reviewCount = detailService.tutorReview(user_no);
	ArrayList<TutorDetail> tpic = detailService.tutorPic(user_no);
	TutorDetail tutorno = detailService.tutorNo(user_no);
	logger.info("tpic" + tpic);
	if(reviewCount > 0) {
		double avgScore = detailService.avgScore(user_no);
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("avgScore", avgScore);
		model.addAttribute("tpic", tpic);
		model.addAttribute("tutorno", tutorno);
		return "detail/detail";
	}else if(reviewCount <= 0) {
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("tpic", tpic);
		model.addAttribute("tutorno", tutorno);
		return "detail/detail";
	}else {
		model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
		return "common/error";
	}
		
	
		

}

@RequestMapping("tpic.do")

public String tutorPic(@RequestParam(value="user_no" , required=false) int user_no, 
							@RequestParam(value="student_no",required=false) int student_no,
							@RequestParam(value="tutor_no", required=false) int tutor_no,
							Model model, LikesCheck lc, RoomNo rn) {
	logger.info("user_no "+user_no);
	int reviewCount = detailService.tutorReview(user_no);
	TutorLikes tlikes = detailService.tutorSave(lc);
	ArrayList<TutorDetail> tpic = detailService.tutorPic(user_no);
	TutorDetail tutorno = detailService.tutorNo(user_no);
	RoomNo searchRoom = detailService.roomNo(rn);
	logger.info("tlikes " + tlikes);
	if(tpic.size()>0 && reviewCount > 0) {
		double avgScore = detailService.avgScore(user_no);
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("avgScore", avgScore);
		model.addAttribute("tpic", tpic);
		 model.addAttribute("tlikes",tlikes);
		 model.addAttribute("tutorno", tutorno);
		 model.addAttribute("searchRoom",searchRoom);
		return "detail/detail";
		
	}else if(tpic.size() > 0 && reviewCount <= 0){
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("tpic", tpic);
		 model.addAttribute("tlikes",tlikes);
		model.addAttribute("tutorno", tutorno);
		model.addAttribute("searchRomm", searchRoom);
		 return "detail/detail";
	}else {
		model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
		return "common/error";
	}
}
@RequestMapping("tsave.do")

public ModelAndView tutorSaveInsert(TutorLikes tlikes,@RequestParam(value="student_no" , required=false) int student_no,  ModelAndView mv
								, @RequestParam(value="tutor_no",required=false) int tutor_no
								, @RequestParam(value="user_no", required=false) int user_no, HttpServletResponse response
									) throws IOException {
	logger.info("user_no "+ user_no);
	logger.info("tutor_no "+ tutor_no);
	logger.info("student_no" + student_no);
	TutorDetail tutorno = detailService.tutorNo(user_no);
	
	if(detailService.tutorSaveInsert(tlikes) > 0) {
		mv.addObject("tlikes", tlikes);
		mv.addObject("tutorno", tutorno);
		
	}else {
		mv.addObject("message", "회원 목록이 존재 하지 않습니다.");
	
	}

	response.setContentType("text/html; charset=utf-8");
	PrintWriter out = response.getWriter();
	mv.setViewName("detail/detail");
	return mv;

}
@RequestMapping("ctsave.do")

public ModelAndView tutorSaveCancel(TutorLikes tlikes,@RequestParam(value="student_no" , required=false) int student_no,  ModelAndView mv
								, @RequestParam(value="tutor_no") int tutor_no,HttpServletResponse response
								) throws IOException {
	logger.info("tutor_no "+tutor_no);

	logger.info("student_no" + student_no);
	
	if(detailService.tutorSaveCancel(tlikes) > 0) {
		
	
	}else {
		mv.addObject("message", "회원 목록이 존재 하지 않습니다.");
	}
	response.setContentType("text/html; charset=utf-8");
	PrintWriter out = response.getWriter();
	mv.setViewName("detail/detail");
	return mv;
}

@RequestMapping("tqnat.do")
public String tutorQnaTeacher(Model model, @RequestParam(value="tutor_no") int tutor_no
		) {
	logger.info("tutor_no "+ tutor_no);

	TutorQna tutorqna = detailService.qnaOne(tutor_no);
	ArrayList<TutorDetail> td2 = detailService.tutorProfile(tutor_no);
	int reviewCount = detailService.tutorReview(tutor_no);
	TutorDetail tutorno = detailService.tutorNo(tutor_no);
	
	if(reviewCount >0 && tutorqna != null) {
		double avgScore = detailService.avgScore(tutor_no); 
		model.addAttribute("tutorqna", tutorqna);
		model.addAttribute("reviewCount", reviewCount);
		 model.addAttribute("avgScore", avgScore);
		model.addAttribute("td2", td2);
		model.addAttribute("tutorno", tutorno);
		
		return  "detail/detail";
	}else if(reviewCount >0 && tutorqna == null) {
		double avgScore = detailService.avgScore(tutor_no); 
		model.addAttribute("tutorqna", tutorqna);
		model.addAttribute("reviewCount", reviewCount);
		 model.addAttribute("avgScore", avgScore);
		model.addAttribute("td2", td2);
		model.addAttribute("tutorno", tutorno);
		model.addAttribute("message", "등록된 게시글이 아직 없습니다.");
		return  "detail/detail";
	}else if
	(reviewCount <= 0 && tutorqna !=null) {
		model.addAttribute("tutorqna", tutorqna);
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("td2", td2);
		model.addAttribute("tutorno", tutorno);
		logger.info("tutorno"+tutorno);
	
		return "detail/detail";
	}else if(reviewCount <= 0 && tutorqna ==null) {
		model.addAttribute("tutorqna", tutorqna);
		model.addAttribute("reviewCount", reviewCount);
		model.addAttribute("td2", td2);
		model.addAttribute("tutorno", tutorno);
		logger.info("tutorno"+tutorno);
		model.addAttribute("message", "등록된 게시글이 아직 없습니다.");
		return "detail/detail";
	}else {
		model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
		return "common/error";
	}
}
	@RequestMapping("tqna.do")
	public String tutorQna(Model model, @RequestParam(value="tutor_no") int tutor_no,
			@RequestParam(value="student_no" ) int student_no,
			@RequestParam(value="user_no")int user_no,
			LikesCheck cl, RoomNo rn) {
		logger.info("tutor_no "+ tutor_no);
		TutorDetail tutorno = detailService.tutorNo(user_no);
		TutorLikes tlikes = detailService.tutorSave(cl);
		TutorQna tutorqna = detailService.qnaOne(tutor_no);
		ArrayList<TutorDetail> td2 = detailService.tutorProfile(tutor_no);
		int reviewCount = detailService.tutorReview(tutor_no);
		RoomNo searchRoom = detailService.roomNo(rn);
		logger.info("tlikes" + tlikes);
		if(reviewCount > 0 && tutorqna != null ) {
		double avgScore = detailService.avgScore(tutor_no);
			model.addAttribute("tutorqna", tutorqna);
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("avgScore", avgScore);
			model.addAttribute("td2", td2);
			model.addAttribute("tlikes", tlikes);
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("searchRoom", searchRoom);
				return "detail/detail";
		}else if(reviewCount > 0 && tutorqna == null ) {
		double avgScore = detailService.avgScore(tutor_no);
			model.addAttribute("tutorqna", tutorqna);
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("avgScore", avgScore);
			model.addAttribute("td2", td2);
			model.addAttribute("tlikes", tlikes);
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("searchRoom", searchRoom);
			model.addAttribute("message", "등록된 게시글이 아직 없습니다.");
				return "detail/detail";
		}else if(reviewCount <= 0 && tutorqna != null ) {
		
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("td2", td2);
			model.addAttribute("tlikes", tlikes);
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("tutorqna", tutorqna);
			return "detail/detail";
		}else if(reviewCount <= 0 && tutorqna == null ) {
		
			model.addAttribute("reviewCount", reviewCount);
			model.addAttribute("td2", td2);
			model.addAttribute("tlikes", tlikes);
			model.addAttribute("tutorno", tutorno);
			model.addAttribute("message", "등록된 게시글이 아직 없습니다.");
			return "detail/detail";
		}else
		{
			model.addAttribute("message", "정보가 없습니다.");
			return "common/error";
		}
			
		

	}
	
	@RequestMapping("qnaanswer.do")
	public String qnaAnswer(TutorQna tutoqna, Model model, @RequestParam(value="tutor_no") int tutor_no) {
		logger.info("tutor_no "+ tutor_no);
		
		
		if(detailService.qnaAnswerInsert(tutoqna) > 0) { 
			model.addAttribute("tutoqna", tutoqna);
		
		
			return  "redirect:tqnat.do?tutor_no=" + tutor_no;
		}else {
			model.addAttribute("message", "회원 목록이 존재 하지 않습니다.");
			return "common/error";
		}

	}
	
	
	  @RequestMapping("qnaupdate.do") 
	  public String qnaUpdate(TutorQna tqup, Model model, @RequestParam(value="tutor_no") int tutor_no
			 ) {
	  logger.info("tutor_no "+ tutor_no);
	  
	  
	  if(detailService.qnaUpdate(tqup)> 0 ) { 
		  model.addAttribute("tqd", tqup);
		  return  "redirect:tqnat.do?tutor_no=" + tutor_no;
	  }else { model.addAttribute("message",
	  "회원 목록이 존재 하지 않습니다."); return "common/error"; }
	  
	  }
	 
	  @RequestMapping("openchatting.do")
	  public String openChatting(OpenChat oc,
			  	@RequestParam("tutor_name") String tutor_name,
			  	@RequestParam("student_name") String student_name,
	  			@RequestParam("student_no") int student_no,
				@RequestParam("tutor_no")int tutor_no, Model model, RoomNo rn)
	  {
			
		  	detailService.openChattingInsert(oc);
		  	RoomNo searchRoom = detailService.roomNo(rn);
		  	  return "redirect:selectChatting.do?chat_room_no="+searchRoom.getChat_room_no()+"&"+"student_no="+searchRoom.getStudent_no()+"&"+"tutor_no="+searchRoom.getTutor_no();
		 
		  
	  }

}


