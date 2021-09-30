package com.tftsa.itys;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "redirect:/top10.do";
	}
	
	@RequestMapping("main.do")
	public String mainViewForward() {
		return "redirect:/top10.do"; // 내보낼 뷰파일명 리턴
	}	
	
	@RequestMapping("info.do")
	public String infoViewForward() {
		return "common/info"; // 내보낼 뷰파일명 리턴
	}

	@RequestMapping("adminDeposit.do")
	public String AdminDepositViewForward() {
		return "admin/adminDeposit"; // 내보낼 뷰파일명 리턴
	}
	
	@RequestMapping("adminChatting.do")
	public String AdminChattingViewForward() {
		return "admin/adminChatting"; // 내보낼 뷰파일명 리턴
	}
	
}
