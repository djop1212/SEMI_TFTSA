package com.tftsa.itys.adminDashboard.model.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminDashboard.model.dao.AdminDashboardDao;
import com.tftsa.itys.adminDashboard.model.vo.BarData;
import com.tftsa.itys.adminDashboard.model.vo.PieData;
import com.tftsa.itys.adminPayment.model.vo.Payment;
import com.tftsa.itys.board.model.vo.Board;

@Service("admindashboardService")
public class AdminDashboardServiceImpl implements AdminDashboardService{
	private static final Logger logger = LoggerFactory.getLogger(AdminDashboardServiceImpl.class);
	
	@Autowired
	private AdminDashboardDao admindashboardDao;
	
	@Override
	public int todayEarning() {
		return admindashboardDao.todayEarning();
	}
	
	@Override
	public int monthSales() {
		return admindashboardDao.monthSales();
	}
	
	@Override
	public int totalUsers() {
		return admindashboardDao.totalUsers();
	}
	
	@Override
	public int cntChattingroom() {
		return admindashboardDao.cntChattingroom();
	}
	
	@Override
	public int potential() {
		return admindashboardDao.potential();
	}
	
	@Override
	public ArrayList<Payment> fiveRecentPayments() {
		return admindashboardDao.fiveRecentPayments();
	}
	
	@Override
	public ArrayList<BarData> oneYearEarning() {
		return admindashboardDao.oneYearEarning();
	}
	
	@Override
	public ArrayList<Board> fiveNewlyPosted() {
		return admindashboardDao.fiveNewlyPosted();
	}
	
	@Override
	public ArrayList<PieData> categorySaleRate() {
		return admindashboardDao.categorySaleRate();
	}
}
