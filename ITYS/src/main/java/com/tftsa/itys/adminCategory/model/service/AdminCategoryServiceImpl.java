package com.tftsa.itys.adminCategory.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tftsa.itys.adminCategory.model.dao.AdminCategoryDao;
import com.tftsa.itys.mypage.model.vo.Subject;

@Service("admincategoryService")
public class AdminCategoryServiceImpl implements AdminCategoryService{

	@Autowired
	private AdminCategoryDao admincategoryDao;
	
	@Override
	public ArrayList<Subject> selectCategoryAll(String sname) {
		return admincategoryDao.selectCategoryAll(sname);
	}
	
	@Override
	public int deleteCategory(String sname) {
		return admincategoryDao.deleteCategory(sname);
	}
	
	@Override
	public int insertSubject(Subject subject) {
		return admincategoryDao.insertSubject(subject);
	}
	
	@Override
	public int cntSubject(String sname) {
		return admincategoryDao.cntSubject(sname);
	}
}
