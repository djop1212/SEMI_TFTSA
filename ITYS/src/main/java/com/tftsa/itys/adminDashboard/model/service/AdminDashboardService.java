package com.tftsa.itys.adminDashboard.model.service;

import java.util.ArrayList;

import com.tftsa.itys.adminDashboard.model.vo.BarData;
import com.tftsa.itys.adminDashboard.model.vo.PieData;
import com.tftsa.itys.adminPayment.model.vo.Payment;
import com.tftsa.itys.board.model.vo.Board;

public interface AdminDashboardService {
	
	int todayEarning();
	int monthSales();
	int totalUsers();
	int cntChattingroom();
	int potential();
	ArrayList<Payment> fiveRecentPayments();
	ArrayList<BarData> oneYearEarning();
	ArrayList<Board> fiveNewlyPosted();
	ArrayList<PieData> categorySaleRate();
//	int deleteCategory(String sname);
//	int insertSubject(Subject subject);
//	int cntSubject(String sname);
}
