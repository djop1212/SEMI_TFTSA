package com.tftsa.itys.adminDashboard.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tftsa.itys.adminDashboard.model.service.AdminDashboardService;
import com.tftsa.itys.adminDashboard.model.vo.BarData;
import com.tftsa.itys.adminPayment.model.vo.Payment;
import com.tftsa.itys.board.model.vo.Board;

@Controller
public class AdminDashboardController {
	private static final Logger logger = LoggerFactory.getLogger(AdminDashboardController.class);

	@Autowired
	private AdminDashboardService admindashboardService;

	@RequestMapping(value ="adminDashboard.do")
	public ModelAndView AdminDashView(ModelAndView mv) {
		
		int today_earning = admindashboardService.todayEarning();
		int month_sales = admindashboardService.monthSales();
		int total_users = admindashboardService.totalUsers();
		int cntChattingroom = admindashboardService.cntChattingroom();
		int potential = admindashboardService.potential();
		ArrayList<Payment> pay_list = admindashboardService.fiveRecentPayments();
		ArrayList<BarData> bar_data = admindashboardService.oneYearEarning();
		List<String> month = new ArrayList<String>();
		List<Integer> earning = new ArrayList<>(bar_data.size());
		ArrayList<Board> board_list = admindashboardService.fiveNewlyPosted();
		
		//object list 값 각각 리스트에 담기
		for (int i=0;i<bar_data.size();i++) {
			month.add("'"+bar_data.get(i).getMonth()+"'");
			earning.add(bar_data.get(i).getEarning());
		}
		
		//view에 전송할 데이터
		mv.addObject("today_earning",today_earning);
		mv.addObject("month_sales",month_sales);
		mv.addObject("total_users",total_users);
		mv.addObject("cntChattingroom",cntChattingroom);
		mv.addObject("potential",potential);
		mv.addObject("pay_list", pay_list);
		mv.addObject("month", month);
		mv.addObject("earning", earning);
		mv.addObject("board_list",board_list);
		
		mv.setViewName("admin/adminDashboard"); // 내보낼 뷰파일명 리턴
		return mv;
	}
}