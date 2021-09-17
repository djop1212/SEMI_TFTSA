package com.tftsa.itys.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.member.model.service.MemberService;
import com.tftsa.itys.member.model.vo.Member;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	// 회원가입페이지로 이동
	@RequestMapping("enrollPage.do")
	public String moveEnrollPage() {
		return "member/enrollPage";
	}

	// 회원가입하기
	@RequestMapping(value = "enroll.do", method = RequestMethod.POST)
	public String insertUserMethod(Member member, Model model) {
		logger.info("enroll.do : " + member);

		// 패스워드 암호화 처리
		member.setUser_pwd(bcryptPasswordEncoder.encode(member.getUser_pwd()));

		if (memberService.insertUser(member) > 0) {
			return "member/loginPage";
		} else {
			model.addAttribute("message", "회원 가입 실패...");
			return "common/error";
		}
	}

	// 로그인페이지로 이동
	@RequestMapping("loginPage.do")
	public String moveLoginPage() {
		return "member/loginPage";
	}

	// 로그인하기
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String loginMethod(Member member, HttpSession session, SessionStatus status, Model model) {
		// System.out.println("login.do : "+member);
		logger.info("login.do : " + member);

		// userid 가 일치하는 회원정보 조회해 옴
		Member loginMember = memberService.selectUser(member.getUser_id());
		// 조회해 온 회원정보의 암호화된 패스워드와 클라이언트가 보낸 암호 비교
		// matches(일반글자 암호, 암호화된 패스워드)

		if (loginMember != null && bcryptPasswordEncoder.matches(member.getUser_pwd(), loginMember.getUser_pwd())
				&& loginMember.getLogin_ok().equals("Y")) {
			// 세션 객체 생성 > 세션 안에 회원정보 저장
			session.setAttribute("loginMember", loginMember);
			status.setComplete(); // 요청 성공. 200 전송보냄
			return "member/loginPage";
		} else {
			model.addAttribute("message", "로그인 실패!");
			return "common/error";
		}

	}

	// 로그아웃하기
	@RequestMapping("logout.do")
	public String logoutMethod(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(false); // 새로 생성되면 안되니까
		if (session != null) {
			session.invalidate();
			return "common/main";
		} else {
			model.addAttribute("message", "로그인 세션이 존재하지 않습니다.");
		}
		return "main";
	}

	// 마이페이지로 이동
	@RequestMapping(value = "myPage.do")
	public ModelAndView myPageMethod(@RequestParam("user_id") String user_id, ModelAndView mv) {
		Member member = memberService.selectUser(user_id);
		if (member != null) {
			mv.addObject("member", member);
			mv.setViewName("mypage/myPage");
		} else {
			mv.addObject("message", user_id + " 회원 조회 실패!");
			mv.setViewName("common/error");
		}
		return mv;
	}

	// 회원탈퇴
	@RequestMapping("deleteUser.do")
	public String deleteUserMethod(@RequestParam("user_id") String user_id, Model model) {
		logger.info("user_id : " + user_id);
		if (memberService.deleteUser(user_id) > 0) {
			return "redirect:logout.do";
		} else {
			model.addAttribute("message", user_id + " 회원 삭제 실패");
			return "common/error";
		}
	}

	// 아이디 찾기 페이지로 이동
	@RequestMapping("findIdPage.do")
	public String moveSearchId() {
		return "member/searchId";
	}

	// 아이디 찾기
	@RequestMapping(value = "findId.do", method = { RequestMethod.POST, RequestMethod.GET })
	public String find_id(HttpServletResponse response,
			@RequestParam(value = "user_email", required = false) String user_email, Model md) throws Exception {
		md.addAttribute("user_id", memberService.selectUserId(response, user_email));
		return "/member/findId";
	}

	// 비밀번호 찾기 페이지로 이동
	@RequestMapping("findPwdPage.do")
	public String moveSearchPwd() {
		return "member/searchPwd";
	}

	// 비밀번호 찾기
	@RequestMapping(value = "findPwd.do", method = RequestMethod.POST)
	public void find_pw(@ModelAttribute Member member, HttpServletResponse response,
			@RequestParam(value = "user_id", required = true) String user_id,
			@RequestParam(value = "user_email", required = true) String user_email) throws Exception {
		member.setUser_id(user_id);
		member.setUser_email(user_email);
		memberService.findUserPwd(response, member);

		member.setUser_pwd(bcryptPasswordEncoder.encode(member.getUser_pwd()));
		// logger.info("member: "+member);
		memberService.updateUserPwd(member);
	}

	// id 중복확인
	@RequestMapping(value = "idCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int idCheck(@RequestParam("id") String user_id) {
		int cnt = memberService.selectIdCheck(user_id);
		//logger.info("id : "+user_id);
		return cnt;
	}

	// email 중복확인
	@RequestMapping(value = "emailCheck.do", method = RequestMethod.POST)
	@ResponseBody
	public int emailCheck(@RequestParam("email") String user_email) {
		int cnt = memberService.selectEmailCheck(user_email);
		//logger.info("email : "+user_email);
		return cnt;
	}

}
