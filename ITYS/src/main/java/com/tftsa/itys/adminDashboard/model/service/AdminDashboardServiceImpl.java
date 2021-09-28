package com.tftsa.itys.adminDashboard.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.tftsa.itys.adminDashboard.controller.AdminDashboardController;
import com.tftsa.itys.adminDashboard.model.dao.AdminDashboardDao;

@Service("admindashboardService")
public class AdminDashboardServiceImpl implements AdminDashboardService{
	private static final Logger logger = LoggerFactory.getLogger(AdminDashboardServiceImpl.class);
	
	@Autowired
	private AdminDashboardDao admindashboardDao;
	
	@Override
	public int todayEarning() {
		return admindashboardDao.todayEarning();
	}
	
//	@Override
//	public int deleteCategory(String sname) {
//		return admindashboardDao.deleteCategory(sname);
//	}
//	
//	@Override
//	public int insertSubject(Subject subject) {
//		return admindashboardDao.insertSubject(subject);
//	}
//	
//	@Override
//	public int cntSubject(String sname) {
//		return admindashboardDao.cntSubject(sname);
//	}
}
