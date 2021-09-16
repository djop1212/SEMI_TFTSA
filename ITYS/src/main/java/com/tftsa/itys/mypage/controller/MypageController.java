package com.tftsa.itys.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.mypage.model.service.MypageService;
import com.tftsa.itys.mypage.model.vo.Likes;
import com.tftsa.itys.mypage.model.vo.Student;
import com.tftsa.itys.mypage.model.vo.Tutor;

@Controller
public class MypageController {
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);

	@Autowired
	private MypageService mypageService;

	// 학생 프로필 추가 페이지로 이동
	@RequestMapping(value = "upSPage.do")
	public ModelAndView moveStudentPage(@RequestParam("user_no") int user_no, ModelAndView mv) {
		//logger.info("upSPage.do : "+user_no);
		mv.addObject("user_no", user_no);
		mv.setViewName("mypage/studentProfile");
		return mv;
	}

	// 학생 프로필 추가
	@RequestMapping(value = "upsprofile.do", method = RequestMethod.POST)
	public String insertStudentProfile( Model model, Student student,
			HttpServletRequest request, HttpServletResponse response, @RequestParam(name="pic", required = false) MultipartFile mfile) throws IOException {
		
		// 업로드된 파일 저장 폴더 지정
		String savePath = request.getSession().getServletContext().getRealPath("resources/images/mypage/student");
		logger.info("upsprofile.do : "+student);
		
		if((mypageService.insertStudent(student) & mypageService.updateStudentPosition(student.getUser_no()))>0) {
			PrintWriter out = response.getWriter();
			String str = "";
			str = "<script language='javascript'>";
			str += "opener.window.location.reload();"; // 오프너 새로고침
			str += "self.close();"; // 창닫기
			str += "</script>";
			out.print(str);
			return null;
		}else {
			model.addAttribute("message", "학생 프로필 추가 실패...");
			return "common/error";
		}
	}

	// 선생님 프로필 추가 페이지로 이동
	@RequestMapping(value = "upTPage.do")
	public String moveTutorPage(@RequestParam("user_no") int user_no) {
		return "mypage/tutorProfile";
	}

	// 선생님 프로필 추가
	@RequestMapping(value = "uptprofile.do", method = RequestMethod.POST)
	public String insertTutorProfile(@RequestParam("user_no") int user_no, Tutor tutor, Model model) {
		tutor.setUser_no(user_no);
		logger.info("uptprofile.do : "+tutor);
		if(mypageService.insertTutor(user_no)>0) {
			return "mypage/myPage";
		}else {
			model.addAttribute("message", "선생님 프로필 추가 실패...");
			return "common/error";
		}
	}

	// 찜목록 조회
	@RequestMapping("wishl.do")
	public String moveWishList(@RequestParam("user_no") int user_no, Model model) {
		ArrayList<Likes> list = mypageService.selectList(user_no);

		if (list.size() > 0) {
			model.addAttribute("list", list);
		}
		return "mypage/wishList";
	}

	// 내 수업 목록 조회
	@RequestMapping("mclass.do")
	public String moveMyClass(@RequestParam("user_no") int user_no, ModelAndView mv) {
		return "mypage/myClass";
	}

}
